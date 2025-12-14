.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/E;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/E;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/E;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/E;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V

    return-void
.end method
