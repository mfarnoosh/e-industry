package com.bazaribazz.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

/**
 * Created by dorsa on 2/16/17.
 */
@Entity
@Table(name = "CATEGORY")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @NotEmpty
    @Column(name = "CATEGORY_NAME", unique = true, nullable = false)
    private String categoryName;

    @NotEmpty
    @Column(name = "CATEGORY_LINK", nullable = false)
    private String categoryLink;

    @NotEmpty
    @Column(name = "PARENT_ID", nullable = false)
    private Integer parentId;

    @NotEmpty
    @Column(name = "SORT_ORDER", nullable = false)
    private Integer sortOrder;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryLink() {
        return categoryLink;
    }

    public void setCategoryLink(String categoryLink) {
        this.categoryLink = categoryLink;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(Integer sortOrder) {
        this.sortOrder = sortOrder;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Category category = (Category) o;

        if (!id.equals(category.id)) return false;
        if (!categoryName.equals(category.categoryName)) return false;
        if (!categoryLink.equals(category.categoryLink)) return false;
        if (!parentId.equals(category.parentId)) return false;
        return sortOrder.equals(category.sortOrder);

    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + categoryName.hashCode();
        result = 31 * result + categoryLink.hashCode();
        result = 31 * result + parentId.hashCode();
        result = 31 * result + sortOrder.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", categoryName='" + categoryName + '\'' +
                ", categoryLink='" + categoryLink + '\'' +
                ", parentId=" + parentId +
                ", sortOrder=" + sortOrder +
                '}';
    }
}
