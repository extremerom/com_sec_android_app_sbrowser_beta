.class public final synthetic Lcom/sec/android/app/sbrowser/auth/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/h;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/auth/h;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/h;->c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/h;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/h;->c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->c(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/h;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/h;->c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->b(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/h;->b:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/h;->c:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->f(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
