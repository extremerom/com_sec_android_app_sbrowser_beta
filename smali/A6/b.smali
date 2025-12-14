.class public final LA6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/a;


# static fields
.field public static final a:LA6/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA6/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA6/b;->a:LA6/b;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performHaptic index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    invoke-static {p1}, LG5/a3;->d(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HapticFeedbackHelper"

    return-object p0
.end method
