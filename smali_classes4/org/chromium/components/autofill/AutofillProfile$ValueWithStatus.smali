.class Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AutofillProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueWithStatus"
.end annotation


# static fields
.field static final EMPTY:Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;


# instance fields
.field private final mStatus:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->EMPTY:Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->mValue:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->mStatus:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->mStatus:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->mValue:Ljava/lang/String;

    return-object p0
.end method
