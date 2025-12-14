.class public final LD5/g;
.super LD5/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:LR5/i;


# direct methods
.method public constructor <init>(LR5/i;)V
    .locals 0

    iput-object p1, p0, LD5/g;->b:LR5/i;

    invoke-direct {p0}, LD5/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 0

    return-void
.end method

.method public final n0(Lcom/google/android/gms/internal/location/zzg;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzg;->a:Lcom/google/android/gms/common/api/Status;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, LD5/g;->b:LR5/i;

    invoke-static {p1, v0, p0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    return-void
.end method
