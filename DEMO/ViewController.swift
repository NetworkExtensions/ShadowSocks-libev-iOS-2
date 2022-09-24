//
//  ViewController.swift
//  DEMO
//
//  Created by yjh易佳豪 on 2019/5/7.
//  Copyright © 2019 jhyi. All rights reserved.
//

import UIKit
import ShadowSocks_libev_iOS
import ShadowSocks_libev_iOS.shadowsocks

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.


        var key: NSString = ""
        var key_p0 = UnsafeMutablePointer<CChar>(mutating: key.utf8String)

    
    
        let p = profile_t(remote_host: key_p0, local_addr: key_p0, method: key_p0, password:key_p0, remote_port: 80, local_port: 88, timeout: 100, acl: key_p0, log: key_p0, fast_open: 0, mode: 0, mtu: 0, mptcp: 0, verbose: 0)
        
        start_ss_local_server(p)
    }

}

