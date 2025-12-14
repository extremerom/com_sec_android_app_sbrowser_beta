.class public final Lhd/c;
.super Lwd/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lhd/d;


# direct methods
.method public constructor <init>(Lwd/z;Lhd/d;)V
    .locals 0

    iput-object p2, p0, Lhd/c;->a:Lhd/d;

    invoke-direct {p0, p1}, Lwd/l;-><init>(Lwd/z;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lhd/c;->a:Lhd/d;

    iget-object v0, v0, Lhd/d;->a:Ljd/e;

    invoke-virtual {v0}, Ljd/e;->close()V

    invoke-super {p0}, Lwd/l;->close()V

    return-void
.end method
