.class Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/shared_preferences/SharedPreferencesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckingEditor"
.end annotation


# instance fields
.field final mWrappedEditor:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;


# direct methods
.method private constructor <init>(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Landroid/content/SharedPreferences$Editor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;-><init>(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->this$0:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {v0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;->mWrappedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
