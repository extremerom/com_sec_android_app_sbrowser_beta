.class Lorg/chromium/base/BundleUtils$1;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field final synthetic val$splitClassLoader:Ljava/lang/ClassLoader;


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/BundleUtils$1;->val$splitClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_0
    return-object v0
.end method
