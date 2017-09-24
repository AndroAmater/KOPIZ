module ProjectsHelper
  def render_tabs_content tab_coll:, cont_coll:, where:
    tabs do |c|
      tab_coll.each do |item|
        c.tab item.name.titleize do
          "<span><div class='container-fluid'>".html_safe +
              (render :partial => 'shared/task',
                      :collection => cont_coll.where(where, item.id),
                      :as => :task) +
            "</div></span>".html_safe
        end
      end
    end
  end
end
