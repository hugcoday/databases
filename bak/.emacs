
;;音乐
(require 'emms)


;;------------ python start---------------
;;(require 'yasnippet)
;;(yas/initialize)
;;(yas/load-directory "E:/TOOLS/Portable/emacs-22.3/site-lisp/yasnippet-0.6.1c/snippets")


(setq auto-mode-alist
(cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
(cons '("python" . python-mode) interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)


(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)


;;---------------- python end-------------



;;(require 'weblogger)
;;(require 'nnrss)

  
(server-start)




(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(weblogger-config-alist (quote (("default" "http://groupcotton.ixiezi.com/xmlrpc.php" "hugcoday" "" "10043")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )




;;(set-foreground-color "Gray")
;;(set-background-color "Black")
;;(set-cursor-color "red")

;;匹配括号
(show-paren-mode t)

;; 不产生备份文件
(setq-default make-backup-files nil)

;; 设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数).
(setq kill-ring-max 800)

;; 在标题栏显示buffer的名字
(setq frame-title-format "%b - Emacs")

;; 使用M-x执行一条命令后同时显示这条命令对应的快捷键
(setq suggest-key-bindings 1)



(setq default-major-mode 'text-mode);;一打开就起用 text 模式。
(global-font-lock-mode t);;语法高亮
(auto-image-file-mode t);;打开图片显示功能
(fset 'yes-or-no-p 'y-or-n-p);;以 y/n代表 yes/no，可能你觉得不需要，呵呵。
(column-number-mode t);;显示列号
(show-paren-mode t);;显示括号匹配
(display-time-mode 1);;显示时间，格式如下
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;;(tool-bar-mode nil);;去掉那个大大的工具栏
;;(scroll-bar-mode nil);;去掉滚动条，因为可以使用鼠标滚轮了 ^_^
(mouse-avoidance-mode 'animate);;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。很好玩阿，这个功能
(setq mouse-yank-at-point t);;支持中键粘贴
(transient-mark-mode t);;这个忘了，郁闷！
(setq x-select-enable-clipboard t);;支持emacs和外部程序的粘贴
(setq frame-title-format "jony@%b");;在标题栏提示你目前在什么位置。你要把hbs改成自己的用户名
(setq default-fill-column 80);;默认显示 80列就换行




