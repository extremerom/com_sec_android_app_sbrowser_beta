.class Lorg/chromium/base/ApplicationStatus$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ApplicationStatus$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/ApplicationStatus$3;


# direct methods
.method public constructor <init>(Lorg/chromium/base/ApplicationStatus$3;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/ApplicationStatus$3$1;->this$0:Lorg/chromium/base/ApplicationStatus$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ApplicationStatusJni;->get()Lorg/chromium/base/ApplicationStatus$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/base/ApplicationStatus$Natives;->onApplicationStateChange(I)V

    return-void
.end method
