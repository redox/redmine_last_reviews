class LastReviewsHooks < Redmine::Hook::ViewListener
  
    def view_welcome_index_right(context = {})
      changesets = Changeset.all :limit => 10, :order => 'commit_date DESC', :joins => :reviews, :conditions => ['comments.commented_type = ?', 'Changeset']
      context[:controller].render_to_string("/last_reviews/home_box", :locals => { :changesets => changesets }, :layout => false)
    end

end
