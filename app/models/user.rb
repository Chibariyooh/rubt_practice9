class User < ApplicationRecord
    attr_accessor :search_name, :search_age

    def search
        User.ransack(name_eq: @search_name, age_eq: @search_age).result
        #eqは検索に該当するデータを表示するのに必要
        #name_cont なら一部分に入っていても該当に入る
    end

end
