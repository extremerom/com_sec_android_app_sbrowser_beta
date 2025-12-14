.class Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/picker/InputDialogContainer$InputActionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/DateTimeChooserAndroid;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDateTimeDialog()V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-static {v0}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->a(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/DateTimeChooserAndroidJni;->get()Lorg/chromium/content/browser/input/DateTimeChooserAndroid$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-static {v1}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->a(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)J

    move-result-wide v1

    iget-object p0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$Natives;->cancelDialog(JLorg/chromium/content/browser/input/DateTimeChooserAndroid;)V

    return-void
.end method

.method public replaceDateTime(D)V
    .locals 7

    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-static {v0}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->a(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/DateTimeChooserAndroidJni;->get()Lorg/chromium/content/browser/input/DateTimeChooserAndroid$Natives;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-static {v0}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->a(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;->this$0:Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$Natives;->replaceDateTime(JLorg/chromium/content/browser/input/DateTimeChooserAndroid;D)V

    return-void
.end method
