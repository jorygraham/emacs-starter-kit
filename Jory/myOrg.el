(org-remember-insinuate)
(setq org-directory "~/Dropbox/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-log-done 'time)
(define-key global-map "\C-cr" 'org-remember)

(setq org-remember-templates
      `(("Todo" ?t "* TODO %?\n %i\n %a" ,(concat org-directory "/todo.org") "Tasks")
        ("Idea" ?i "* %^{Title}\n %i\n %a" ,(concat org-directory "/ideas.org") "Ideas")
        ("Note" ?n "* %?\n %i\n %a" ,org-default-notes-file "Notes")))


;; Make windmove work in org-mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
