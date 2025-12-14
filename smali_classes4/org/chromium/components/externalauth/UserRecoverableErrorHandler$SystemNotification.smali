.class public final Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$SystemNotification;
.super Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemNotification"
.end annotation


# static fields
.field private static final sNotificationShown:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$SystemNotification;->sNotificationShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;I)V
    .locals 3

    sget-object p0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$SystemNotification;->sNotificationShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, La5/b;->d:La5/b;

    const-string v0, "n"

    invoke-virtual {p0, p1, p2, v0}, La5/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, La5/b;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method
