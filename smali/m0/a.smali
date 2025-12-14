.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/g;


# static fields
.field public static final a:Lm0/d;

.field public static final b:Lm0/d;

.field public static final c:Lm0/d;

.field public static final d:Lm0/c;

.field public static final e:Lm0/c;

.field public static final f:Lm0/c;

.field public static final g:Lm0/b;

.field public static final synthetic h:Lm0/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lm0/d;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Lm0/d;-><init>(FF)V

    sput-object v0, Lm0/a;->a:Lm0/d;

    new-instance v0, Lm0/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm0/d;-><init>(FF)V

    sput-object v0, Lm0/a;->b:Lm0/d;

    new-instance v0, Lm0/d;

    invoke-direct {v0, v2, v2}, Lm0/d;-><init>(FF)V

    new-instance v0, Lm0/d;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Lm0/d;-><init>(FF)V

    sput-object v0, Lm0/a;->c:Lm0/d;

    new-instance v0, Lm0/c;

    invoke-direct {v0, v1}, Lm0/c;-><init>(F)V

    sput-object v0, Lm0/a;->d:Lm0/c;

    new-instance v0, Lm0/c;

    invoke-direct {v0, v2}, Lm0/c;-><init>(F)V

    sput-object v0, Lm0/a;->e:Lm0/c;

    new-instance v0, Lm0/c;

    invoke-direct {v0, v3}, Lm0/c;-><init>(F)V

    sput-object v0, Lm0/a;->f:Lm0/c;

    new-instance v0, Lm0/b;

    invoke-direct {v0, v1}, Lm0/b;-><init>(F)V

    sput-object v0, Lm0/a;->g:Lm0/b;

    new-instance v0, Lm0/b;

    invoke-direct {v0, v2}, Lm0/b;-><init>(F)V

    new-instance v0, Lm0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm0/a;->h:Lm0/a;

    return-void
.end method
