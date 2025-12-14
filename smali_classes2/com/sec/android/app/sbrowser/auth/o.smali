.class public final synthetic Lcom/sec/android/app/sbrowser/auth/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/auth/o;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/o;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/o;->b:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/password/KeyguardAdapterPasswordEditor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/o;->b:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/KeyguardAdapterPasswordEditor;->a(Lcom/sec/android/app/sbrowser/settings/password/KeyguardAdapterPasswordEditor;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/o;->b:Lcom/sec/android/app/sbrowser/auth/AuthCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->a(Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
