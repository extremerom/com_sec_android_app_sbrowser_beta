.class public final LS/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/N;


# instance fields
.field public final synthetic a:Lo3/i;


# direct methods
.method public constructor <init>(Lo3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/j;->a:Lo3/i;

    return-void
.end method


# virtual methods
.method public final scrollBy(F)F
    .locals 0

    iget-object p0, p0, LS/j;->a:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LB0/a;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method
