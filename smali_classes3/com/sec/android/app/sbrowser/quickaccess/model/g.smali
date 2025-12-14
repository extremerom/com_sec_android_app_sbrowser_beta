.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->d(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/g;->c:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
