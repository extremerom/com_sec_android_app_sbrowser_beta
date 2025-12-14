.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/a;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
