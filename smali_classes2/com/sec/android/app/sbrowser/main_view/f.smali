.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/f;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/f;->c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/f;->c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/f;->a:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/f;->b:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$2;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V

    return-void
.end method
