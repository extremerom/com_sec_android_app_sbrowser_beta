.class public final LU1/c;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:LR1/p;

.field public final synthetic c:Lz0/g;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;LR1/p;Lz0/g;Ljava/lang/Integer;Z)V
    .locals 0

    iput-object p1, p0, LU1/c;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, LU1/c;->b:LR1/p;

    iput-object p3, p0, LU1/c;->c:Lz0/g;

    iput-object p4, p0, LU1/c;->d:Ljava/lang/Integer;

    iput-boolean p5, p0, LU1/c;->e:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const-string p1, "view"

    invoke-static {v0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LU1/c;->b:LR1/p;

    iget-object v2, p1, LR1/p;->c:Ljava/lang/String;

    iget-object v1, p0, LU1/c;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, LU1/c;->c:Lz0/g;

    iget-object v4, p0, LU1/c;->d:Ljava/lang/Integer;

    iget-boolean v5, p0, LU1/c;->e:Z

    invoke-static/range {v0 .. v5}, LG5/B2;->b(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lz0/g;Ljava/lang/Integer;Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
