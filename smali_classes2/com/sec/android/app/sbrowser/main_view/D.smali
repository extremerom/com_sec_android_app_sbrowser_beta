.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/D;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/D;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/D;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/D;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
