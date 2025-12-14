.class public final LD5/d;
.super Lb5/j;
.source "SourceFile"

# interfaces
.implements LL5/a;


# static fields
.field public static final a:Lb5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lb5/g;

    new-instance v2, LA5/v;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LA5/v;-><init>(I)V

    const-string v3, "LocationServices.API"

    invoke-direct {v1, v3, v2, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v1, LD5/d;->a:Lb5/g;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/location/LocationRequest;LL5/b;Landroid/os/Looper;)LR5/h;
    .locals 3

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    const-string v0, "invalid null looper"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-class v0, LL5/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/emoji2/text/d;

    invoke-direct {v1, p3, p2, v0}, Landroidx/emoji2/text/d;-><init>(Landroid/os/Looper;LL5/b;Ljava/lang/String;)V

    new-instance p2, Lcom/bumptech/glide/manager/o;

    invoke-direct {p2, p0, v1}, Lcom/bumptech/glide/manager/o;-><init>(LD5/d;Landroidx/emoji2/text/d;)V

    new-instance p3, Lo3/l;

    invoke-direct {p3, p2, p1}, Lo3/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LZ4/i;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p3, p1, LZ4/i;->b:Ljava/lang/Object;

    iput-object p2, p1, LZ4/i;->c:Ljava/lang/Object;

    iput-object v1, p1, LZ4/i;->d:Ljava/lang/Object;

    const/16 p2, 0x984

    iput p2, p1, LZ4/i;->a:I

    iget-object p2, p1, LZ4/i;->d:Ljava/lang/Object;

    check-cast p2, Landroidx/emoji2/text/d;

    iget-object p2, p2, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast p2, Lc5/m;

    const-string p3, "Key must not be null"

    invoke-static {p2, p3}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lc5/q;

    new-instance v0, LG5/g4;

    iget-object v1, p1, LZ4/i;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/d;

    iget v2, p1, LZ4/i;->a:I

    invoke-direct {v0, p1, v1, v2}, LG5/g4;-><init>(LZ4/i;Landroidx/emoji2/text/d;I)V

    new-instance v1, Lo3/c;

    invoke-direct {v1, p1, p2}, Lo3/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p3, v0, v1}, Lc5/q;-><init>(LG5/g4;Lo3/c;)V

    invoke-virtual {p0, p3}, Lb5/j;->doRegisterEventListener(Lc5/q;)LR5/h;

    move-result-object p0

    return-object p0
.end method
