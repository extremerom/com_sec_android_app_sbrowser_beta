.class public final enum LH0/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LH0/k;

.field public static final enum Ltr:LH0/k;

.field public static final enum Rtl:LH0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LH0/k;

    const-string v1, "Ltr"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH0/k;->Ltr:LH0/k;

    new-instance v1, LH0/k;

    const-string v2, "Rtl"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LH0/k;->Rtl:LH0/k;

    filled-new-array {v0, v1}, [LH0/k;

    move-result-object v0

    sput-object v0, LH0/k;->$VALUES:[LH0/k;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LH0/k;
    .locals 1

    const-class v0, LH0/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH0/k;

    return-object p0
.end method

.method public static values()[LH0/k;
    .locals 1

    sget-object v0, LH0/k;->$VALUES:[LH0/k;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH0/k;

    return-object v0
.end method
