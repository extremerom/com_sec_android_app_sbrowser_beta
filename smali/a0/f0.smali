.class public final La0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/a0;
.implements LNc/B;


# instance fields
.field public final a:Lib/h;

.field public final synthetic b:La0/a0;


# direct methods
.method public constructor <init>(La0/a0;Lib/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La0/f0;->a:Lib/h;

    iput-object p1, p0, La0/f0;->b:La0/a0;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La0/f0;->b:La0/a0;

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La0/f0;->b:La0/a0;

    invoke-interface {p0, p1}, La0/a0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, La0/f0;->a:Lib/h;

    return-object p0
.end method
