.class public final synthetic Lcom/sec/android/app/sbrowser/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerNotifierDelegate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/c;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/GlobalConfigInitializer;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getIntentToOpenIntentBlocker(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/SBrowserLauncherActivity;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
