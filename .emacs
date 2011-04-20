(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour


;;(require 'git-emacs)

;;(global-set-key [f5] 'revert-buffer)
;;(global-set-key [C-f5] 'revert-buffer-with-coding-system)

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


(setq x-select-enable-clipboard t);;֧��emacs���ⲿ�����ճ��
(setq frame-title-format "jony@%b");;�ڱ�������ʾ��Ŀǰ��ʲôλ�á���Ҫ��hbs�ĳ��Լ����û���
(setq default-fill-column 120);;Ĭ����ʾ 120�оͻ���




(require 'emacs-wiki)
 
(setq emacs-wiki-directories '("E:/databases/wiki"))
 
;ָ����Ŀ����Ĭ��Ŀ¼
(setq emacs-wiki-projects
      `(("default" . ((emacs-wiki-directories . ("E:/databases/wiki/dailynote"))))
       ("emacs" . ((fill-column . 65)
                  (emacs-wiki-directories . ("E:/databases/wiki/emacs"))))
       ("linux" . ((fill-column . 65)
                  (emacs-wiki-directories . ("E:/databases/wiki/linux"))))))
 


;;(setq diary-display-function (quote diary-fancy-display))
;;(setq diary-file "E:/databases/wiki/diary")
;;(setq diary-mail-addr "hugcoday@gmail.com")
;;(add-hook 'diary-hook 'appt-make-list)

(global-set-key (kbd "<f11>") 'calendar)
(global-set-key (kbd "<f12>") 'list-bookmarks)

;; ��emacs�ܼ����ճ������ʱ�䣬�� calendar ���� S ���ɿ���
(setq calendar-latitude +39.54)
(setq calendar-longitude +116.28)
(setq calendar-location-name "����")

;; ����������ʾ���� calendar ���� pC ��ʾ����
(setq chinese-calendar-celestial-stem
  ["��" "��" "��" "��" "��" "��" "��" "��" "��" "��"])
(setq chinese-calendar-terrestrial-branch
  ["��" "��" "��" "î" "��" "��" "��" "δ" "��" "��" "��" "��"])

;; ���� calendar ����ʾ
(setq calendar-remove-frame-by-deleting t)
(setq mark-diary-entries-in-calendar t)     ; ���calendar����diary������
(setq mark-holidays-in-calendar nil)        ; Ϊ��ͻ����diary�����ڣ�calendar�ϲ���ǽ���

