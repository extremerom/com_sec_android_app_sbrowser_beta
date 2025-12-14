.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->d:Landroid/app/Activity;

    iput p5, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->e:I

    return-void
.end method


# virtual methods
.method public final onPost()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->d:Landroid/app/Activity;

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;->e:I

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V

    return-void
.end method
