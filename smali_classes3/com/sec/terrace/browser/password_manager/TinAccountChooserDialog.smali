.class Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;
    }
.end annotation


# instance fields
.field private mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

.field private final mContext:Lcom/sec/terrace/TerraceActivity;

.field private final mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

.field private mImpl:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;

.field private mNativeAccountChooserDialog:J

.field private final mOrigin:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/TerraceActivity;J[Lcom/sec/terrace/browser/password_manager/TerraceCredential;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;-><init>(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    iput-object p1, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mContext:Lcom/sec/terrace/TerraceActivity;

    iput-object p4, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    iput-object p5, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mOrigin:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mNativeAccountChooserDialog:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)[Lcom/sec/terrace/browser/password_manager/TerraceCredential;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mCredentials:[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mNativeAccountChooserDialog:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mImpl:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;

    return-void
.end method

.method private static createAndShowAccountChooser(Lorg/chromium/ui/base/WindowAndroid;J[Lcom/sec/terrace/browser/password_manager/TerraceCredential;Ljava/lang/String;)Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinAccountChooserDialog"

    const-string v1, "createAndShowAccountChooser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    instance-of v1, p0, Lcom/sec/terrace/TerraceActivity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/TinTerraceInternals;->getAccountChooserDialogBridge(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;-><init>(Lcom/sec/terrace/TerraceActivity;J[Lcom/sec/terrace/browser/password_manager/TerraceCredential;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mClient:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;

    invoke-interface {v1, p0, p1}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;->createAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V

    invoke-direct {v0}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->show()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private dismissDialog()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinAccountChooserDialog"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mImpl:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;->dismiss()V

    :cond_0
    return-void
.end method

.method private show()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->mImpl:Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;->show()V

    :cond_0
    return-void
.end method
