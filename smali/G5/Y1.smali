.class public final LG5/Y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG5/Y1;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;

.field public static final d:Lu7/c;

.field public static final e:Lu7/c;

.field public static final f:Lu7/c;

.field public static final g:Lu7/c;

.field public static final h:Lu7/c;

.field public static final i:Lu7/c;

.field public static final j:Lu7/c;

.field public static final k:Lu7/c;

.field public static final l:Lu7/c;

.field public static final m:Lu7/c;

.field public static final n:Lu7/c;

.field public static final o:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LG5/Y1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG5/Y1;->a:LG5/Y1;

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

    const-string v3, "appId"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->b:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "appVersion"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->c:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "firebaseProjectId"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->d:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "mlSdkVersion"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->e:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "tfliteSchemaVersion"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->f:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "gcmSenderId"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->g:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "apiKey"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->h:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "languages"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->i:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "mlSdkInstanceId"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->j:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "isClearcutClient"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->k:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "isStandaloneMlkit"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->l:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xc

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "isJsonLogging"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->m:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "buildLevel"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/Y1;->n:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "optionalModuleVersion"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, LG5/Y1;->o:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LG5/J3;

    check-cast p2, Lu7/e;

    iget-object p0, p1, LG5/J3;->a:Ljava/lang/String;

    sget-object v0, LG5/Y1;->b:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->c:Lu7/c;

    iget-object v0, p1, LG5/J3;->b:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->d:Lu7/c;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->e:Lu7/c;

    iget-object v1, p1, LG5/J3;->c:Ljava/lang/String;

    invoke-interface {p2, p0, v1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->f:Lu7/c;

    iget-object v1, p1, LG5/J3;->d:Ljava/lang/String;

    invoke-interface {p2, p0, v1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->g:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->h:Lu7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->i:Lu7/c;

    iget-object v0, p1, LG5/J3;->e:LG5/o4;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->j:Lu7/c;

    iget-object v0, p1, LG5/J3;->f:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->k:Lu7/c;

    iget-object v0, p1, LG5/J3;->g:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->l:Lu7/c;

    iget-object v0, p1, LG5/J3;->h:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->m:Lu7/c;

    iget-object v0, p1, LG5/J3;->i:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->n:Lu7/c;

    iget-object v0, p1, LG5/J3;->j:Ljava/lang/Integer;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/Y1;->o:Lu7/c;

    iget-object p1, p1, LG5/J3;->k:Ljava/lang/Integer;

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
