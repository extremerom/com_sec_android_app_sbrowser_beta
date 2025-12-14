.class public final LU/m;
.super LG5/x2;
.source "SourceFile"


# instance fields
.field public final a:Lm0/c;


# direct methods
.method public constructor <init>(Lm0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/m;->a:Lm0/c;

    return-void
.end method


# virtual methods
.method public final a(ILH0/k;Lz0/G;)I
    .locals 0

    const-string p3, "layoutDirection"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU/m;->a:Lm0/c;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lm0/c;->a(II)I

    move-result p0

    return p0
.end method
