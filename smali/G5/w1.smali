.class public final LG5/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG5/w1;

.field public static final b:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG5/w1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG5/w1;->a:LG5/w1;

    sget-object v0, LG5/h;->zza:LG5/h;

    new-instance v1, LG5/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LG5/e;-><init>(ILG5/h;)V

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzam;

    invoke-static {v0, v1}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "identifiedLanguage"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, LG5/w1;->b:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LG5/k3;

    check-cast p2, Lu7/e;

    iget-object p0, p1, LG5/k3;->a:LG5/i3;

    sget-object p1, LG5/w1;->b:Lu7/c;

    invoke-interface {p2, p1, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
