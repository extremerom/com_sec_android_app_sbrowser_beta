.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/T;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/T;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/T;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/T;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/T;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/T;->c:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/T;->c:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/T;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;Landroid/view/ViewGroup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
