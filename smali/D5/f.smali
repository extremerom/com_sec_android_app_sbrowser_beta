.class public final LD5/f;
.super Lc5/i;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic p:LR5/i;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;LR5/i;)V
    .locals 0

    iput-object p1, p0, LD5/f;->b:Ljava/lang/Boolean;

    iput-object p2, p0, LD5/f;->p:LR5/i;

    invoke-direct {p0}, Lc5/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, LD5/f;->p:LR5/i;

    iget-object p0, p0, LD5/f;->b:Ljava/lang/Boolean;

    invoke-static {p1, p0, v0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    return-void
.end method
