.class public final LG5/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG5/u1;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;

.field public static final d:Lu7/c;

.field public static final e:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LG5/u1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG5/u1;->a:LG5/u1;

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

    const-string v3, "inferenceCommonLogEvent"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/u1;->b:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "options"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/u1;->c:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lu7/c;

    invoke-static {v1}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "identifyLanguageResult"

    invoke-direct {v2, v3, v1}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LG5/u1;->d:Lu7/c;

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "identifyPossibleLanguagesResult"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, LG5/u1;->e:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LG5/m3;

    check-cast p2, Lu7/e;

    iget-object p0, p1, LG5/m3;->a:LG5/G2;

    sget-object v0, LG5/u1;->b:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/u1;->c:Lu7/c;

    iget-object v0, p1, LG5/m3;->b:LG5/K2;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/u1;->d:Lu7/c;

    iget-object p1, p1, LG5/m3;->c:LG5/k3;

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG5/u1;->e:Lu7/c;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
