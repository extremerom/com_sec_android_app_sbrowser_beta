.class public final LG5/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG5/F0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LG5/F0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG5/F0;->a:LG5/F0;

    sget-object v0, LG5/h;->zza:LG5/h;

    new-instance v1, LG5/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LG5/e;-><init>(ILG5/h;)V

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/zzam;

    invoke-static {v0, v1}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, LB/e;->C(Ljava/util/HashMap;)V

    sget-object v1, LG5/h;->zza:LG5/h;

    new-instance v2, LG5/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, LG5/e;-><init>(ILG5/h;)V

    invoke-static {v0, v2}, LB/e;->u(Ljava/lang/Class;LG5/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, LB/e;->C(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method
