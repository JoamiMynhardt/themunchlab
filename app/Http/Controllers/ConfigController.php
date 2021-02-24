<?php

namespace App\Http\Controllers;
use Artisan;

class ConfigController extends Controller
{
    public function clearRoute()
    {
        Artisan::call('route:clear');
        return "route Cache is cleared";
    }

    public function clearConfigCache()
    {
        Artisan::call('config:cache');
        return "config Cache is cleared";
    }

    public function clearAppCache()
    {
        Artisan::call('cache:clear');
        return "Cache is cleared";
    }

    public function clearViewCache()
    {
        Artisan::call('view:clear');
        return "view Cache is cleared";
    }
}
