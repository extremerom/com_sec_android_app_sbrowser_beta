.class public final LW5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/Object;

.field public final synthetic i:I

.field public final j:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzam;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LW5/a;->i:I

    const-string v0, "TextNativeHandle"

    const-string v1, "ocr"

    invoke-direct {p0, p1, v0, v1}, LW5/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, LW5/a;->j:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzk;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, LW5/a;->i:I

    const-string v0, "BarcodeNativeHandle"

    const-string v1, "barcode"

    invoke-direct {p0, p1, v0, v1}, LW5/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, LW5/a;->j:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzf;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LW5/a;->i:I

    const-string v0, "FaceNativeHandle"

    const-string v1, "face"

    invoke-direct {p0, p1, v0, v1}, LW5/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, LW5/a;->j:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LW5/a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, LW5/a;->f:Z

    iput-boolean v0, p0, LW5/a;->g:Z

    iput-object p1, p0, LW5/a;->a:Landroid/content/Context;

    iput-object p2, p0, LW5/a;->c:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "com.google.android.gms.vision.dynamite."

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, LW5/a;->d:Ljava/lang/String;

    iput-object p3, p0, LW5/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ln5/d;Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, LW5/a;->j:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget p0, p0, LW5/a;->i:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    invoke-virtual {p1, p0}, Ln5/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/vision/h1;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/vision/h1;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/vision/h1;

    invoke-direct {v4, p0, p1, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lm5/b;

    invoke-direct {p0, p2}, Lm5/b;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/google/android/gms/internal/vision/zzk;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v4}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v0, p1}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/g1;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/vision/g1;

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/vision/g1;

    invoke-direct {v2, p1, p2, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    :goto_2
    return-object v2

    :pswitch_0
    const-string p0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    invoke-virtual {p1, p0}, Ln5/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_5

    move-object v4, v2

    goto :goto_3

    :cond_5
    const-string p1, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/vision/c;

    if-eqz v5, :cond_6

    check-cast v4, Lcom/google/android/gms/internal/vision/c;

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/google/android/gms/internal/vision/c;

    invoke-direct {v4, p0, p1, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_3
    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    new-instance p0, Lm5/b;

    invoke-direct {p0, p2}, Lm5/b;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/google/android/gms/internal/vision/zzam;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v4}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v0, p1}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/b;

    if-eqz v1, :cond_9

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/vision/b;

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/vision/b;

    invoke-direct {v2, p1, p2, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_4
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    :goto_5
    return-object v2

    :pswitch_1
    const-string p0, "com.google.android.gms.vision.dynamite.face"

    invoke-static {p2, p0}, Ln5/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const-string v4, "com.google.android.gms.vision.dynamite"

    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Ln5/d;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    const-string v5, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator"

    if-le p0, v4, :cond_c

    const-string p0, "com.google.android.gms.vision.face.NativeFaceDetectorV2Creator"

    invoke-virtual {p1, p0}, Ln5/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    sget p1, LW5/e;->a:I

    if-nez p0, :cond_a

    :goto_6
    move-object p1, v2

    goto :goto_7

    :cond_a
    invoke-interface {p0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v4, p1, LW5/b;

    if-eqz v4, :cond_b

    check-cast p1, LW5/b;

    goto :goto_7

    :cond_b
    new-instance p1, LW5/d;

    invoke-direct {p1, p0, v5, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_7

    :cond_c
    const-string p0, "com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator"

    invoke-virtual {p1, p0}, Ln5/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    sget p1, LW5/e;->a:I

    if-nez p0, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {p0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v4, p1, LW5/b;

    if-eqz v4, :cond_e

    check-cast p1, LW5/b;

    goto :goto_7

    :cond_e
    new-instance p1, LW5/d;

    invoke-direct {p1, p0, v5, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_7
    if-nez p1, :cond_f

    goto :goto_9

    :cond_f
    new-instance p0, Lm5/b;

    invoke-direct {p0, p2}, Lm5/b;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/google/android/gms/vision/face/internal/client/zzf;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    check-cast p1, LW5/d;

    invoke-virtual {p1}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0, p2}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    const-string p2, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LW5/c;

    if-eqz v1, :cond_11

    move-object v2, v0

    check-cast v2, LW5/c;

    goto :goto_8

    :cond_11
    new-instance v2, LW5/c;

    invoke-direct {v2, p1, p2, v3}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_8
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    :goto_9
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, LW5/a;->i:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, LD5/a;->C0(ILandroid/os/Parcel;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/b;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, LD5/a;->C0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW5/c;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, LD5/a;->C0(ILandroid/os/Parcel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/zzs;)[LV5/a;
    .locals 13

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [LV5/a;

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lm5/b;

    invoke-direct {v0, p1}, Lm5/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW5/c;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p0, p1

    new-array p0, p0, [LV5/a;

    move p2, v1

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_5

    aget-object v0, p1, p2

    new-instance v9, LV5/a;

    iget v3, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->b:I

    new-instance v4, Landroid/graphics/PointF;

    iget v2, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->c:F

    iget v5, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->d:F

    invoke-direct {v4, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->j:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    if-nez v2, :cond_1

    new-array v2, v1, [LV5/c;

    move-object v7, v2

    goto :goto_2

    :cond_1
    array-length v5, v2

    new-array v5, v5, [LV5/c;

    move v6, v1

    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_2

    aget-object v7, v2, v6

    new-instance v8, LV5/c;

    new-instance v10, Landroid/graphics/PointF;

    iget v11, v7, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->b:F

    iget v12, v7, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->c:F

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iget v7, v7, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->d:I

    invoke-direct {v8, v10, v7}, LV5/c;-><init>(Landroid/graphics/PointF;I)V

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v5

    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->n:[Lcom/google/android/gms/vision/face/internal/client/zza;

    if-nez v2, :cond_3

    new-array v2, v1, [LR7/a;

    move-object v8, v2

    goto :goto_4

    :cond_3
    array-length v5, v2

    new-array v5, v5, [LR7/a;

    move v6, v1

    :goto_3
    array-length v8, v2

    if-ge v6, v8, :cond_4

    aget-object v8, v2, v6

    new-instance v10, LR7/a;

    iget-object v8, v8, Lcom/google/android/gms/vision/face/internal/client/zza;->a:[Landroid/graphics/PointF;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    aput-object v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v5

    :goto_4
    iget v5, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->e:F

    iget v6, v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->f:F

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LV5/a;-><init>(ILandroid/graphics/PointF;FF[LV5/c;[LR7/a;)V

    aput-object v9, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "FaceNativeHandle"

    const-string p2, "Could not call native face detector"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p0, v1, [LV5/a;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, LW5/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LW5/a;->h:Ljava/lang/Object;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, LW5/a;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object p0, p0, LW5/a;->c:Ljava/lang/String;

    const-string v2, "Could not finalize native handle"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 8

    const-string v0, "Broadcasting download intent for dependency "

    const-string v1, "Cannot load thick client module, fall back to load optional module "

    const-string v2, "com.google.android.gms.vision."

    iget-object v3, p0, LW5/a;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, LW5/a;->h:Ljava/lang/Object;

    if-eqz v4, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x1

    :try_start_1
    iget-object v5, p0, LW5/a;->a:Landroid/content/Context;

    sget-object v6, Ln5/d;->c:LE5/v;

    iget-object v7, p0, LW5/a;->d:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Ln5/d;->c(Landroid/content/Context;Ln5/c;Ljava/lang/String;)Ln5/d;

    move-result-object v0
    :try_end_1
    .catch Ln5/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v5, p0, LW5/a;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Vision"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iget-object v1, p0, LW5/a;->a:Landroid/content/Context;

    sget-object v5, Ln5/d;->b:Lz7/d;

    invoke-static {v1, v5, v2}, Ln5/d;->c(Landroid/content/Context;Ln5/c;Ljava/lang/String;)Ln5/d;

    move-result-object v0
    :try_end_3
    .catch Ln5/a; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    const-string v5, "Error loading optional module %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v5, v2}, LG5/k2;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, LW5/a;->f:Z

    if-nez v1, :cond_3

    iget-object v1, p0, LW5/a;->e:Ljava/lang/String;

    const-string v2, "Vision"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, LW5/a;->e:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms"

    const-string v5, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.gms.vision.DEPENDENCIES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.gms.vision.DEPENDENCY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, LW5/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v4, p0, LW5/a;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    :try_start_5
    iget-object v1, p0, LW5/a;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, LW5/a;->a(Ln5/d;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LW5/a;->h:Ljava/lang/Object;
    :try_end_5
    .catch Ln5/a; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, LW5/a;->c:Ljava/lang/String;

    const-string v2, "Error creating remote native handle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    iget-boolean v0, p0, LW5/a;->g:Z

    if-nez v0, :cond_5

    iget-object v1, p0, LW5/a;->h:Ljava/lang/Object;

    if-nez v1, :cond_5

    iget-object v0, p0, LW5/a;->c:Ljava/lang/String;

    const-string v1, "Native handle not yet available. Reverting to no-op handle."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, LW5/a;->g:Z

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, LW5/a;->h:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p0, LW5/a;->c:Ljava/lang/String;

    const-string v1, "Native handle is now available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    iget-object p0, p0, LW5/a;->h:Ljava/lang/Object;

    monitor-exit v3

    return-object p0

    :goto_3
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
