.class public final synthetic LA9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/e;
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/google/firebase/components/d;
.implements Lorg/chromium/ui/permissions/PermissionCallback;
.implements LK6/A;
.implements LO4/f;
.implements LY2/e0;
.implements Lcom/google/firebase/components/e;
.implements LR5/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LA9/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .locals 0

    invoke-interface {p1}, Lcom/google/firebase/components/ComponentRegistrar;->getComponents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, LA9/b;->a:I

    check-cast p1, Landroid/database/Cursor;

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LH4/k;->a()LH4/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, v0, LH4/j;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, LR4/a;->b(I)LE4/c;

    move-result-object v1

    iput-object v1, v0, LH4/j;->c:LE4/c;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    :goto_2
    iput-object v1, v0, LH4/j;->b:[B

    invoke-virtual {v0}, LH4/j;->a()LH4/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public b(LY2/d0;LY2/f0;Z)V
    .locals 0

    iget p0, p0, LA9/b;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1, p2}, LY2/d0;->onTransitionResume(LY2/f0;)V

    return-void

    :pswitch_0
    invoke-interface {p1, p2}, LY2/d0;->onTransitionPause(LY2/f0;)V

    return-void

    :pswitch_1
    invoke-interface {p1, p2}, LY2/d0;->onTransitionCancel(LY2/f0;)V

    return-void

    :pswitch_2
    invoke-interface {p1, p2}, LY2/d0;->a(LY2/f0;)V

    return-void

    :pswitch_3
    invoke-interface {p1, p2}, LY2/d0;->b(LY2/f0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(LA7/c;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, LA9/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LJ7/b;

    const-class v0, LJ7/a;

    invoke-static {v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v0

    invoke-virtual {p1, v0}, LA7/c;->d(Lcom/google/firebase/components/r;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, LJ7/c;->c:LJ7/c;

    if-nez v0, :cond_1

    const-class v1, LJ7/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, LJ7/c;->c:LJ7/c;

    if-nez v0, :cond_0

    new-instance v0, LJ7/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, LJ7/c;-><init>(I)V

    sput-object v0, LJ7/c;->c:LJ7/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0, p1, v0}, LJ7/b;-><init>(Ljava/util/Set;LJ7/c;)V

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(LA7/c;)LD7/f;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, LA9/b;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;->d()Lcom/samsung/android/vexfwk/param/VexFwkWineInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->c()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->d()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/imgstyletransfer/VexFwkImageStyleTransfer$Companion;->a()Lcom/samsung/android/vexfwk/imagestyletransfer/VexFwkImageStyleTransferCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->t()Lcom/samsung/android/vexfwk/imagetranslation/VexFwkIImageTranslatorCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/imagetagger/VexFwkImageTagger;->d()Lcom/samsung/android/vexfwk/param/VexFwkImageTaggerResult;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;-><init>()V

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->a()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/imageeffect/VexFwkImageEffectProcessor$Companion;->a()Lcom/samsung/android/vexfwk/imageeffect/VexFwkImageEffectCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->b()[I

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public m(LR5/h;)Ljava/lang/Object;
    .locals 0

    const/16 p0, 0x193

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;->j(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/chromium/components/permissions/PermissionUtil;->a([Ljava/lang/String;[I)V

    return-void
.end method
