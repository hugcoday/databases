
;;����
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

;;ƥ������
(show-paren-mode t)

;; �����������ļ�
(setq-default make-backup-files nil)

;; ����ճ��������Ŀ����.��һ���ܴ��kill ring(���ļ�¼����).
(setq kill-ring-max 800)

;; �ڱ�������ʾbuffer������
(setq frame-title-format "%b - Emacs")

;; ʹ��M-xִ��һ�������ͬʱ��ʾ���������Ӧ�Ŀ�ݼ�
(setq suggest-key-bindings 1)



(setq default-major-mode 'text-mode);;һ�򿪾����� text ģʽ��
(global-font-lock-mode t);;�﷨����
(auto-image-file-mode t);;��ͼƬ��ʾ����
(fset 'yes-or-no-p 'y-or-n-p);;�� y/n���� yes/no����������ò���Ҫ���Ǻǡ�
(column-number-mode t);;��ʾ�к�
(show-paren-mode t);;��ʾ����ƥ��
(display-time-mode 1);;��ʾʱ�䣬��ʽ����
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;;(tool-bar-mode nil);;ȥ���Ǹ����Ĺ�����
;;(scroll-bar-mode nil);;ȥ������������Ϊ����ʹ���������� ^_^
(mouse-avoidance-mode 'animate);;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ��ܺ��氢���������
(setq mouse-yank-at-point t);;֧���м�ճ��
(transient-mark-mode t);;������ˣ����ƣ�
(setq x-select-enable-clipboard t);;֧��emacs���ⲿ�����ճ��
(setq frame-title-format "jony@%b");;�ڱ�������ʾ��Ŀǰ��ʲôλ�á���Ҫ��hbs�ĳ��Լ����û���
(setq default-fill-column 80);;Ĭ����ʾ 80�оͻ���




