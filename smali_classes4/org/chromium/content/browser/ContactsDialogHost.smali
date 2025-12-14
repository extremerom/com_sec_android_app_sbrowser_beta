.class public Lorg/chromium/content/browser/ContactsDialogHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ContactsPickerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContactsDialogHost$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeContactsProviderAndroid:J

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    iput-object p1, p0, Lorg/chromium/content/browser/ContactsDialogHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/ContactsDialogHost;ZZZZZZLjava/lang/String;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/chromium/content/browser/ContactsDialogHost;->lambda$showDialog$0(ZZZZZZLjava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method public static create(Lorg/chromium/content_public/browser/WebContents;J)Lorg/chromium/content/browser/ContactsDialogHost;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/ContactsDialogHost;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/ContactsDialogHost;-><init>(Lorg/chromium/content_public/browser/WebContents;J)V

    return-object v0
.end method

.method private isDestroyed()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showDialog$0(ZZZZZZLjava/lang/String;[Ljava/lang/String;[I)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0}, Lorg/chromium/content/browser/ContactsDialogHost;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    array-length v2, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, v1, v2

    if-nez v0, :cond_1

    iget-object v0, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/chromium/content_public/browser/ContactsPicker;->showContactsPicker(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/ContactsPickerListener;ZZZZZZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/ContactsDialogHostJni;->get()Lorg/chromium/content/browser/ContactsDialogHost$Natives;

    move-result-object v0

    iget-wide v1, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/ContactsDialogHost$Natives;->endWithPermissionDenied(J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/ContactsDialogHostJni;->get()Lorg/chromium/content/browser/ContactsDialogHost$Natives;

    move-result-object v0

    iget-wide v1, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/ContactsDialogHost$Natives;->endWithPermissionDenied(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showDialog(ZZZZZZLjava/lang/String;)V
    .locals 13
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v10

    invoke-virtual {v10}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ContactsDialogHostJni;->get()Lorg/chromium/content/browser/ContactsDialogHost$Natives;

    move-result-object v0

    iget-wide v1, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/ContactsDialogHost$Natives;->endWithPermissionDenied(J)V

    return-void

    :cond_0
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {v10, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/chromium/content_public/browser/ContactsPicker;->showContactsPicker(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/ContactsPickerListener;ZZZZZZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ContactsDialogHostJni;->get()Lorg/chromium/content/browser/ContactsDialogHost$Natives;

    move-result-object v0

    iget-wide v1, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/ContactsDialogHost$Natives;->endWithPermissionDenied(J)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v10, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/chromium/content/browser/ContactsDialogHostJni;->get()Lorg/chromium/content/browser/ContactsDialogHost$Natives;

    move-result-object v0

    iget-wide v1, v9, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/ContactsDialogHost$Natives;->endWithPermissionDenied(J)V

    return-void

    :cond_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/chromium/content/browser/g;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/g;-><init>(Lorg/chromium/content/browser/ContactsDialogHost;ZZZZZZLjava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContactsDialogHost;->mNativeContactsProviderAndroid:J

    return-void
.end method
