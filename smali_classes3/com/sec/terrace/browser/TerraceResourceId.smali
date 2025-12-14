.class public Lcom/sec/terrace/browser/TerraceResourceId;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static mapToDrawableId(I)I
    .locals 21

    move/from16 v0, p0

    sget v2, Lcom/sec/terrace/R$drawable;->amex_card:I

    sget v3, Lcom/sec/terrace/R$drawable;->diners_card:I

    sget v4, Lcom/sec/terrace/R$drawable;->discover_card:I

    sget v5, Lcom/sec/terrace/R$drawable;->elo_card:I

    sget v6, Lcom/sec/terrace/R$drawable;->is_credit_card_black:I

    sget v7, Lcom/sec/terrace/R$drawable;->jcb_card:I

    sget v8, Lcom/sec/terrace/R$drawable;->mc_card:I

    sget v9, Lcom/sec/terrace/R$drawable;->mir_card:I

    sget v10, Lcom/sec/terrace/R$drawable;->unionpay_card:I

    sget v11, Lcom/sec/terrace/R$drawable;->visa_card:I

    sget v20, Lcom/sec/terrace/R$drawable;->missing:I

    move/from16 v16, v20

    move/from16 v17, v20

    move/from16 v13, v20

    move/from16 v14, v20

    move/from16 v12, v20

    move/from16 v15, v20

    sget v18, Lcom/sec/terrace/R$drawable;->internet_ic_dialog_cvc_credit:I

    sget v19, Lcom/sec/terrace/R$drawable;->internet_ic_dialog_cvc_amex:I

    const/4 v1, 0x0

    filled-new-array/range {v1 .. v19}, [I

    move-result-object v1

    if-ltz v0, :cond_0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    aget v0, v1, v0

    return v0

    :cond_0
    return v20
.end method
