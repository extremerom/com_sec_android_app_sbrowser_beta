.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/c;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/c;->c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/c;->c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/c;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/c;->b:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->h(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
