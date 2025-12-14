.class public Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemChooserRow"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconDescription:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIconDescription:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIconDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIconDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasSameContents(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z
    .locals 1
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->mIconDescription:Ljava/lang/String;

    invoke-static {p0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
