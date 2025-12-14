.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/P;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/P;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/P;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/P;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewPreference;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
