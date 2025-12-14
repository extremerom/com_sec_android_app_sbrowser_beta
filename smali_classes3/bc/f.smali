.class public final Lbc/f;
.super Lbc/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LP7/c;


# direct methods
.method public synthetic constructor <init>(LP7/c;I)V
    .locals 0

    iput p2, p0, Lbc/f;->b:I

    iput-object p1, p0, Lbc/f;->c:LP7/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbc/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lbc/f;->b:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lbc/f;->c:LP7/c;

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Lbc/g;

    iput-object p1, p0, Lbc/g;->e:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'data\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2.visitEnd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lbc/f;->c:LP7/c;

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Lbc/g;

    iput-object p1, p0, Lbc/g;->d:[Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'data\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1.visitEnd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
