.class public final LG5/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final A:Lu7/c;

.field public static final B:Lu7/c;

.field public static final C:Lu7/c;

.field public static final D:Lu7/c;

.field public static final E:Lu7/c;

.field public static final F:Lu7/c;

.field public static final G:Lu7/c;

.field public static final H:Lu7/c;

.field public static final I:Lu7/c;

.field public static final J:Lu7/c;

.field public static final K:Lu7/c;

.field public static final L:Lu7/c;

.field public static final M:Lu7/c;

.field public static final N:Lu7/c;

.field public static final O:Lu7/c;

.field public static final P:Lu7/c;

.field public static final Q:Lu7/c;

.field public static final R:Lu7/c;

.field public static final S:Lu7/c;

.field public static final T:Lu7/c;

.field public static final U:Lu7/c;

.field public static final V:Lu7/c;

.field public static final W:Lu7/c;

.field public static final X:Lu7/c;

.field public static final Y:Lu7/c;

.field public static final Z:Lu7/c;

.field public static final a:LG5/Z0;

.field public static final a0:Lu7/c;

.field public static final b:Lu7/c;

.field public static final b0:Lu7/c;

.field public static final c:Lu7/c;

.field public static final c0:Lu7/c;

.field public static final d:Lu7/c;

.field public static final d0:Lu7/c;

.field public static final e:Lu7/c;

.field public static final e0:Lu7/c;

.field public static final f:Lu7/c;

.field public static final f0:Lu7/c;

.field public static final g:Lu7/c;

.field public static final g0:Lu7/c;

.field public static final h:Lu7/c;

.field public static final h0:Lu7/c;

.field public static final i:Lu7/c;

.field public static final i0:Lu7/c;

.field public static final j:Lu7/c;

.field public static final j0:Lu7/c;

.field public static final k:Lu7/c;

.field public static final k0:Lu7/c;

.field public static final l:Lu7/c;

.field public static final l0:Lu7/c;

.field public static final m:Lu7/c;

.field public static final m0:Lu7/c;

.field public static final n:Lu7/c;

.field public static final n0:Lu7/c;

.field public static final o:Lu7/c;

.field public static final o0:Lu7/c;

.field public static final p:Lu7/c;

.field public static final p0:Lu7/c;

.field public static final q:Lu7/c;

.field public static final q0:Lu7/c;

.field public static final r:Lu7/c;

.field public static final r0:Lu7/c;

.field public static final s:Lu7/c;

.field public static final s0:Lu7/c;

.field public static final t:Lu7/c;

.field public static final t0:Lu7/c;

.field public static final u:Lu7/c;

.field public static final u0:Lu7/c;

.field public static final v:Lu7/c;

.field public static final v0:Lu7/c;

.field public static final w:Lu7/c;

.field public static final w0:Lu7/c;

.field public static final x:Lu7/c;

.field public static final x0:Lu7/c;

.field public static final y:Lu7/c;

.field public static final y0:Lu7/c;

.field public static final z:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LG5/Z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG5/Z0;->a:LG5/Z0;

    sget-object v0, LG5/h;->zza:LG5/h;

    new-instance v1, LG5/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LG5/e;-><init>(ILG5/h;)V

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzam;

    invoke-static {v0, v1}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "systemInfo"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->b:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "eventName"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->c:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x25

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "isThickClient"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->d:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x3d

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "clientType"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->e:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "modelDownloadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->f:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "customModelLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->g:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "customModelInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->h:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "customModelCreateLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->i:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceFaceDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->j:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x3b

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceFaceLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->k:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceTextDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->l:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x4f

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceTextDetectionLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->m:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceBarcodeDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->n:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x3a

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceBarcodeLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->o:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x30

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceImageLabelCreateLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->p:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x31

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceImageLabelLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->q:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x12

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceImageLabelDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->r:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x1a

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceObjectCreateLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->s:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceObjectLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->t:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceObjectInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->u:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x2c

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDevicePoseDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->v:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceSegmentationLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->w:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x13

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceSmartReplyLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->x:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x15

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceLanguageIdentificationLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->y:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x16

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceTranslationLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->z:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudFaceDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->A:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudCropHintDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->B:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudDocumentTextDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->C:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudImagePropertiesDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->D:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudImageLabelDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->E:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudLandmarkDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->F:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudLogoDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->G:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudSafeSearchDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->H:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudTextDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->I:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cloudWebSearchDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->J:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x17

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "automlImageLabelingCreateLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->K:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "automlImageLabelingLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->L:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x19

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "automlImageLabelingInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->M:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x27

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "isModelDownloadedLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->N:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x28

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "deleteModelLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->O:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x1e

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedAutomlImageLabelingInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->P:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x1f

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedCustomModelInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->Q:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x20

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceFaceDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->R:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x21

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceBarcodeDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->S:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x22

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceImageLabelDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->T:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x23

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceObjectInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->U:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x24

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceTextDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->V:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x2e

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDevicePoseDetectionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->W:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x2f

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceSegmentationLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->X:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x45

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "pipelineAccelerationInferenceEvents"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->Y:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x2a

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "remoteConfigLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->Z:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x32

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "inputImageConstructionLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->a0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x33

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "leakedHandleEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->b0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x34

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "cameraSourceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->c0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x35

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "imageLabelOptionalModuleLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->d0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x36

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "languageIdentificationOptionalModuleLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->e0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x3c

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "faceDetectionOptionalModuleLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->f0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x37

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "nlClassifierOptionalModuleLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->g0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x38

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "nlClassifierClientLibraryLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->h0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x39

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "accelerationAllowlistLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->i0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x3e

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "toxicityDetectionCreateEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->j0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x3f

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "toxicityDetectionLoadEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->k0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x40

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "toxicityDetectionInferenceEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->l0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x41

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "barcodeDetectionOptionalModuleLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->m0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "customImageLabelOptionalModuleLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->n0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x43

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "codeScannerScanApiEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->o0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x44

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "codeScannerOptionalModuleEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->p0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x46

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceExplicitContentCreateLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->q0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x47

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceExplicitContentLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->r0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x48

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceExplicitContentInferenceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->s0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x49

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceExplicitContentLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->t0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x4a

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceSelfieFaceCreateLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->u0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x4b

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceSelfieFaceLoadLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->v0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x4c

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "onDeviceSelfieFaceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->w0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x4d

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "aggregatedOnDeviceSelfieFaceLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Z0;->x0:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x4e

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "smartReplyOptionalModuleLogEvent"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, LG5/Z0;->y0:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LG5/P2;

    check-cast p2, Lu7/e;

    iget-object p0, p1, LG5/P2;->a:LG5/J3;

    sget-object v0, LG5/Z0;->b:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->c:Lu7/c;

    iget-object v0, p1, LG5/P2;->b:LG5/O2;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->d:Lu7/c;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->e:Lu7/c;

    iget-object v1, p1, LG5/P2;->c:LG5/M2;

    invoke-interface {p2, p0, v1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->f:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->g:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->h:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->i:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->j:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->k:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->l:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->m:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->n:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->o:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->p:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->q:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->r:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->s:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->t:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->u:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->v:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->w:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->x:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->y:Lu7/c;

    iget-object p1, p1, LG5/P2;->d:LG5/m3;

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->z:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->A:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->B:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->C:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->D:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->E:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->F:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->G:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->H:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->I:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->J:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->K:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->L:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->M:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->N:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->O:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->P:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->Q:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->R:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->S:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->T:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->U:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->V:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->W:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->X:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->Y:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->Z:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->a0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->b0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->c0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->d0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->e0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->f0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->g0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->h0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->i0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->j0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->k0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->l0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->m0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->n0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->o0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->p0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->q0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->r0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->s0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->t0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->u0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->v0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->w0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->x0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Z0;->y0:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
