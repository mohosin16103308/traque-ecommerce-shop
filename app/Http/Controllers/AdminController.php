<?php

namespace App\Http\Controllers;



use App\Admin;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;



class AdminController extends Controller
{

    //    admin registration
    public function adminregistration(){
        $user= User::create([

            'name' => request('name'),
            'email' => request('email'),
            'user_type' => request('user_type'),
            'password' => Hash::make(request('password')),
        ]);
        Admin::create([
            'username'=>request('username'),
            'email' => request('email'),
            'password' => Hash::make(request('password')),
        ]);
        // return redirect()->to('login')->with('message','Email Must Be Verified');
        return redirect()->back();

    }


    //    admin loginfrom
     public function loginform(){
         return view('admin.admin_login');

     }


     //admin login
    public function adminLogin(Request $request){
        if ($request->ismethod('post')) {
            $data = $request->input();
            if (Auth::attempt(['email' => $data['email'], 'password' => $data['password'],'user_type'=>'admin', 'admin' => '1'])) {
                return view('admin.dashboard');

            } else {

                return back()->with('error',' Invalid UserName Or Password');;
            }

        }

    }



      //admin dashboard
      public function dashboard()
      {
          return view('admin.dashboard');


      }



      //admin settings
      public function settings(){
          return view('admin.settings');
      }

     //admin check pasword
    public function chkPassword(Request $request){
        $data = $request->all();
        $current_password = $data['current_pwd'];
        $check_password = User::where(['admin'=>'1','user_type'=>'admin','email' => Auth::user()->email])->first();
        if(Hash::check($current_password,$check_password->password)){
            echo "true"; die;
        }else {
            echo "false"; die;
        }
    }



     //update password
    public function updatePassword(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            //echo "<pre>"; print_r($data); die;
            $check_password = User::where(['admin'=>'1','user_type'=>'admin','email' => Auth::user()->email])->first();
            $current_password = $data['current_pwd'];
            if(Hash::check($current_password,$check_password->password)){
                $password = bcrypt($data['new_pwd']);
                User::where(['admin'=>'1','user_type'=>'admin','email' => Auth::user()->email])->update(['password'=>$password]);
                return redirect('/admin/settings')->with('success','Password updated Successfully!');
            }else {
                return redirect('/admin/settings')->with('error','Incorrect Current Password!');
            }



        }
    }



    //logout
    public function  logout(){
        Session::flush();
        return redirect('admin/login')->with('error','You Logout successfully');
    }








}
