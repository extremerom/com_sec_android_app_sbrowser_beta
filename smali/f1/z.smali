.class public final synthetic Lf1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/a;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lf1/B;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lf1/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/z;->a:Landroid/view/View;

    iput-object p2, p0, Lf1/z;->b:Lf1/B;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lf1/D;

    iget-object v0, p0, Lf1/z;->a:Landroid/view/View;

    iget-object p0, p0, Lf1/z;->b:Lf1/B;

    invoke-virtual {p1, v0, p0}, Lf1/D;->a(Landroid/view/View;Lf1/B;)Lf1/A;

    return-void
.end method
