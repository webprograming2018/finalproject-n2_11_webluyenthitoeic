
package model;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class Post implements Serializable{
    private String id;
    private String title;
    private String description;
    private String slug;
    private String status;
    private String created_at;
    private String category_id;
    private String publish;
    private String images;
    private String previous_link = "";
    private String after_link = "";

    public Post() {
    }

    public Post(String id, String title, String description, String slug, String status, String created_at, String category_id, String publish, String images, String previous_link, String after_link) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.slug = slug;
        this.status = status;
        this.created_at = created_at;
        this.category_id = category_id;
        this.publish = publish;
        this.images = images;
        this.previous_link = previous_link;
        this.after_link = after_link;
    }

    public Post(String id, String title, String description, String slug, String status, String created_at, String category_id, String publish, String images) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.slug = slug;
        this.status = status;
        this.created_at = created_at;
        this.category_id = category_id;
        this.publish = publish;
        this.images = images;
    }

    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getPrevious_link() {
        return previous_link;
    }

    public void setPrevious_link(String previous_link) {
        this.previous_link = previous_link;
    }

    public String getAfter_link() {
        return after_link;
    }

    public void setAfter_link(String after_link) {
        this.after_link = after_link;
    }
    
}
