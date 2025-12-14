.class public final LD5/h;
.super LD5/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:LR5/i;

.field public final synthetic p:LD5/j;


# direct methods
.method public constructor <init>(LR5/i;LD5/j;)V
    .locals 0

    iput-object p1, p0, LD5/h;->b:LR5/i;

    iput-object p2, p0, LD5/h;->p:LD5/j;

    invoke-direct {p0}, LD5/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    iget-object p0, p0, LD5/h;->p:LD5/j;

    invoke-virtual {p0}, LD5/j;->z0()V

    return-void
.end method

.method public final n0(Lcom/google/android/gms/internal/location/zzg;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzg;->a:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iget-object p0, p0, LD5/h;->b:LR5/i;

    invoke-static {p1, v0, p0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    return-void
.end method
