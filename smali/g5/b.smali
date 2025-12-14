.class public final Lg5/b;
.super Lb5/j;
.source "SourceFile"


# static fields
.field public static final a:Lb5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA5/v;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LA5/v;-><init>(I)V

    new-instance v2, Lb5/g;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v2, Lg5/b;->a:Lb5/g;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/internal/TelemetryData;)LR5/h;
    .locals 3

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v0

    sget-object v1, Lx5/b;->a:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    iput-object v1, v0, LG6/f;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, LG6/f;->b:Z

    new-instance v1, LI3/d;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p1}, LI3/d;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, LG6/f;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LG6/f;->a()Lc5/L;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/j;->doBestEffortWrite(Lc5/u;)LR5/h;

    move-result-object p0

    return-object p0
.end method
