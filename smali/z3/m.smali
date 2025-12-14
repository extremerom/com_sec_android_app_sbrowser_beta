.class public final synthetic Lz3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/r;


# instance fields
.field public final synthetic a:Lz3/t;

.field public final synthetic b:LE3/f;

.field public final synthetic c:Landroid/graphics/ColorFilter;

.field public final synthetic d:Lo3/e;


# direct methods
.method public synthetic constructor <init>(Lz3/t;LE3/f;Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/m;->a:Lz3/t;

    iput-object p2, p0, Lz3/m;->b:LE3/f;

    iput-object p3, p0, Lz3/m;->c:Landroid/graphics/ColorFilter;

    iput-object p4, p0, Lz3/m;->d:Lo3/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lz3/m;->b:LE3/f;

    iget-object v1, p0, Lz3/m;->d:Lo3/e;

    iget-object v2, p0, Lz3/m;->a:Lz3/t;

    iget-object p0, p0, Lz3/m;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v0, p0, v1}, Lz3/t;->a(LE3/f;Landroid/graphics/ColorFilter;Lo3/e;)V

    return-void
.end method
