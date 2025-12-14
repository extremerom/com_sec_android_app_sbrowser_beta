.class public final LG5/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG5/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG5/x1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG5/x1;->a:LG5/x1;

    sget-object v0, LG5/h;->zza:LG5/h;

    new-instance v1, LG5/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, LG5/e;-><init>(ILG5/h;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/mlkit_language_id_common/zzam;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method
