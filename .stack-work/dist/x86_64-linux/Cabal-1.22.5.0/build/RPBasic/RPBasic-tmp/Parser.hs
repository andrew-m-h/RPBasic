{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# LANGUAGE Trustworthy #-}

module Parser where

import Lexer
import safe Prelude hiding (Ordering(..))
import safe Data.Functor
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: t15 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t15
happyOut15 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: t16 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t16
happyOut16 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: t17 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t17
happyOut17 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: t18 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t18
happyOut18 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: t19 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t19
happyOut19 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: t20 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t20
happyOut20 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: t21 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t21
happyOut21 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: t22 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t22
happyOut22 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: t23 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t23
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: t24 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t24
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: t25 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t25
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: t26 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t26
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: t27 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t27
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: t28 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t28
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: t29 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t29
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: t30 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t30
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: t31 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t31
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: t32 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t32
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: t33 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t33
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: t34 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t34
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: t35 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t35
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: t36 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t36
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: t37 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t37
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: t38 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> t38
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\x00\x00\x00\x00\x5e\x00\x55\x01\x00\x00\x00\x00\x00\x00\x54\x01\x53\x01\x52\x01\x1d\x01\x50\x01\x4a\x01\x4c\x01\x48\x01\x46\x01\x42\x01\x45\x01\x44\x01\x4f\x01\xfe\xff\x4e\x01\x41\x01\x40\x01\xfc\xff\x3f\x01\x3b\x01\xfe\xff\x3e\x01\x00\x00\x34\x00\x00\x00\x3c\x01\x00\x00\x00\x00\xfe\xff\x00\x00\x4d\x01\x3a\x01\xff\xff\x00\x00\x37\x01\x4b\x01\x00\x00\x00\x00\xee\xff\x00\x00\x49\x01\xfe\xff\xe2\xff\x01\x00\x00\x00\x36\x01\xfe\xff\x00\x00\x35\x01\x12\x00\xfe\xff\x47\x01\x00\x00\xfc\xff\x00\x00\xfe\xff\x00\x00\x00\x00\x34\x01\x00\x00\x32\x01\x31\x01\x00\x00\xfe\xff\x00\x00\x2b\x01\x2d\x01\x1b\x01\x30\x01\x2f\x01\x2c\x01\x00\x00\xe5\xff\x06\x01\x00\x00\x00\x00\x00\x00\x00\x00\x19\x01\x00\x00\xb1\x00\x00\x00\x43\x01\x04\x00\x04\x00\x04\x00\x0e\x01\x04\x00\x04\x01\x04\x00\x04\x00\xb1\x00\x00\x00\x2c\x00\xef\x00\x20\x00\x95\x00\xf1\xff\x00\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x00\x00\x0b\x00\x04\x00\x00\x00\x2a\x01\x04\x00\x04\x00\x00\x00\x3d\x01\x39\x01\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb1\x00\xfe\xff\xec\xff\x00\x00\x88\x00\x7b\x00\x29\x01\x09\x01\xb1\x00\x0a\x01\x28\x01\x05\x01\x04\x00\x27\x01\x26\x01\x00\x00\x20\x00\xb1\x00\xb1\x00\xef\x00\xef\x00\x20\x00\x20\x00\x20\x00\x20\x00\x00\x00\x38\x01\x00\x00\xa4\x00\x25\x01\x00\x00\x00\x00\x00\x00\x04\x00\x04\x00\xb1\x00\x33\x01\x04\x00\x00\x00\x04\x00\x00\x00\x20\x01\x20\x01\x00\x00\x2e\x01\x15\x01\x01\x00\x00\x00\x00\x00\x00\x00\xb1\x00\xb1\x00\xfe\xff\x6e\x00\x61\x00\x17\x01\x17\x01\x14\x01\x24\x01\x23\x01\x00\x00\x00\x00\x21\x01\x16\x01\x01\x00\x00\x00\x00\x00\x1f\x01\x1a\x01\x00\x00\x00\x00\x13\x01\x04\x00\x00\x00\x18\x01\x12\x01\x00\x00\x11\x01\x54\x00\x10\x01\x04\x00\x47\x00\x00\x00\x0f\x01\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x10\x00\xd6\x00\x00\x00\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x22\x01\x00\x00\x00\x00\x00\x00\x1c\x01\x1e\x01\x00\x00\xc9\x00\x00\x00\xc3\x00\xce\x00\xbc\x00\xca\x00\xda\x00\xae\x00\x00\x00\xbf\x00\x96\x00\x00\x00\x00\x00\x00\x00\x00\x00\x92\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x00\x00\x00\x00\x00\x00\x00\x89\x00\x00\x00\xcd\x00\x00\x00\x93\x00\x7c\x00\x00\x00\x9a\x00\xf6\xff\x78\x00\x00\x00\x00\x00\x81\x00\x00\x00\x74\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x77\x00\x00\x00\x00\x00\x00\x00\x63\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5c\x00\xf9\x00\xf8\x00\xf5\x00\x00\x00\xf4\x00\x00\x00\xcc\x00\xf1\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\x00\xed\x00\xec\x00\xe9\x00\xe8\x00\xe5\x00\xe4\x00\xe1\x00\xe0\x00\x00\x00\xf4\xff\x24\x00\x00\x00\x00\x00\xdd\x00\xdc\x00\x00\x00\x64\x00\x00\x00\xd9\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x51\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd5\x00\xd4\x00\x00\x00\x00\x00\xd1\x00\x00\x00\xd0\x00\x00\x00\x60\x00\x5b\x00\x00\x00\x00\x00\x00\x00\xc7\x00\x00\x00\xa3\x00\x00\x00\x00\x00\x00\x00\x45\x00\x00\x00\x00\x00\x4f\x00\x4b\x00\x00\x00\x00\x00\x41\x00\x00\x00\x00\x00\x00\x00\x49\x00\xc6\x00\x1c\x00\x00\x00\x00\x00\x32\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x00\x00\x2b\x00\x00\x00\x00\x00\x00\x00\x17\x00\x06\x00\x00\x00\x00\x00\xf7\xff\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xfb\xff\x00\x00\xfe\xff\xfd\xff\x00\x00\xfc\xff\xf9\xff\xf7\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xec\xff\x00\x00\xe7\xff\x00\x00\x00\x00\x00\x00\x00\x00\xf0\xff\x00\x00\xf3\xff\x00\x00\xb5\xff\xb4\xff\x00\x00\xb2\xff\x00\x00\x00\x00\x00\x00\xe8\xff\x00\x00\x00\x00\xe3\xff\xe0\xff\x00\x00\xed\xff\x00\x00\x00\x00\x00\x00\x00\x00\xf6\xff\x00\x00\x00\x00\xef\xff\x00\x00\x00\x00\x00\x00\x00\x00\xea\xff\x00\x00\xf8\xff\x00\x00\xb3\xff\xf4\xff\x00\x00\xf2\xff\x00\x00\x00\x00\xe9\xff\x00\x00\xe5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe2\xff\x00\x00\xb6\xff\xee\xff\xeb\xff\xe4\xff\xd1\xff\x00\x00\xa1\xff\xbc\xff\xa3\xff\xb9\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb6\xff\xc6\xff\x00\x00\xa5\xff\xab\xff\xa1\xff\xac\xff\xad\xff\x00\x00\x00\x00\xba\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf5\xff\x00\x00\xc6\xff\xb8\xff\xb6\xff\x00\x00\x00\x00\xdb\xff\xd4\xff\x00\x00\x00\x00\xe1\xff\xe6\xff\xfa\xff\xf1\xff\xdc\xff\x00\x00\x00\x00\xd5\xff\x00\x00\x00\x00\x00\x00\xc9\xff\xc7\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd3\xff\xa6\xff\xa7\xff\xa8\xff\xae\xff\xaf\xff\xb0\xff\xb1\xff\xa9\xff\xaa\xff\xbd\xff\x00\x00\xa4\xff\x00\x00\x00\x00\xa2\xff\xb7\xff\xbb\xff\x00\x00\x00\x00\xca\xff\x00\x00\x00\x00\xd2\xff\x00\x00\xdd\xff\x00\x00\x00\x00\xd7\xff\x00\x00\xdf\xff\x00\x00\xd6\xff\xc3\xff\xda\xff\xc8\xff\xce\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd0\xff\xd8\xff\xc5\xff\xde\xff\xc4\xff\x00\x00\x00\x00\x00\x00\xbf\xff\xcd\xff\xcb\xff\xc1\xff\xcf\xff\xd9\xff\x00\x00\x00\x00\xc0\xff\x00\x00\x00\x00\xcc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc2\xff\x00\x00\xbe\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x1f\x00\x01\x00\x17\x00\x08\x00\x01\x00\x10\x00\x19\x00\x17\x00\x15\x00\x13\x00\x0d\x00\x0e\x00\x0f\x00\x03\x00\x2a\x00\x00\x00\x01\x00\x02\x00\x31\x00\x20\x00\x03\x00\x20\x00\x0c\x00\x19\x00\x18\x00\x35\x00\x1a\x00\x11\x00\x0b\x00\x1a\x00\x33\x00\x15\x00\x33\x00\x17\x00\x11\x00\x33\x00\x0e\x00\x20\x00\x15\x00\x22\x00\x17\x00\x29\x00\x2a\x00\x2b\x00\x29\x00\x2a\x00\x2b\x00\x2f\x00\x35\x00\x33\x00\x2f\x00\x36\x00\x2a\x00\x35\x00\x1b\x00\x1c\x00\x35\x00\x16\x00\x17\x00\x2a\x00\x20\x00\x13\x00\x22\x00\x35\x00\x0d\x00\x0e\x00\x0f\x00\x20\x00\x19\x00\x22\x00\x35\x00\x1c\x00\x03\x00\x2a\x00\x17\x00\x2c\x00\x2d\x00\x2e\x00\x1d\x00\x24\x00\x25\x00\x0c\x00\x0d\x00\x28\x00\x29\x00\x2a\x00\x0e\x00\x2c\x00\x2d\x00\x2e\x00\x1a\x00\x30\x00\x31\x00\x13\x00\x33\x00\x19\x00\x03\x00\x13\x00\x05\x00\x06\x00\x07\x00\x21\x00\x09\x00\x0a\x00\x0e\x00\x36\x00\x24\x00\x25\x00\x19\x00\x0e\x00\x28\x00\x29\x00\x2a\x00\x21\x00\x2c\x00\x2d\x00\x2e\x00\x12\x00\x30\x00\x24\x00\x25\x00\x19\x00\x1f\x00\x28\x00\x29\x00\x2a\x00\x14\x00\x2c\x00\x2d\x00\x2e\x00\x20\x00\x30\x00\x24\x00\x25\x00\x19\x00\x11\x00\x28\x00\x29\x00\x2a\x00\x0b\x00\x2c\x00\x2d\x00\x2e\x00\x21\x00\x30\x00\x24\x00\x25\x00\x19\x00\x21\x00\x28\x00\x29\x00\x2a\x00\x21\x00\x2c\x00\x2d\x00\x2e\x00\x21\x00\x30\x00\x24\x00\x25\x00\x19\x00\x08\x00\x28\x00\x29\x00\x2a\x00\x13\x00\x2c\x00\x2d\x00\x2e\x00\x21\x00\x30\x00\x24\x00\x25\x00\x19\x00\x0f\x00\x28\x00\x29\x00\x2a\x00\x21\x00\x2c\x00\x2d\x00\x2e\x00\x21\x00\x30\x00\x24\x00\x25\x00\x18\x00\x19\x00\x28\x00\x29\x00\x2a\x00\x1c\x00\x2c\x00\x2d\x00\x2e\x00\x05\x00\x30\x00\x0a\x00\x0b\x00\x24\x00\x25\x00\x07\x00\x08\x00\x28\x00\x29\x00\x2a\x00\x21\x00\x2c\x00\x2d\x00\x2e\x00\x09\x00\x30\x00\x24\x00\x25\x00\x01\x00\x02\x00\x28\x00\x29\x00\x2a\x00\x0e\x00\x2c\x00\x2d\x00\x2e\x00\x06\x00\x30\x00\x16\x00\x17\x00\x1e\x00\x1e\x00\x20\x00\x20\x00\x22\x00\x22\x00\x21\x00\x1e\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x20\x00\x20\x00\x22\x00\x22\x00\x2d\x00\x2e\x00\x1a\x00\x1b\x00\x1a\x00\x1b\x00\x05\x00\x06\x00\x06\x00\x09\x00\x04\x00\x18\x00\x18\x00\x11\x00\x18\x00\x1a\x00\x12\x00\x1a\x00\x18\x00\x18\x00\x02\x00\x12\x00\x11\x00\x1f\x00\x1f\x00\x12\x00\x12\x00\x04\x00\x18\x00\x01\x00\x35\x00\x31\x00\x33\x00\x04\x00\x19\x00\x02\x00\x1a\x00\x1a\x00\x19\x00\x35\x00\x01\x00\x1b\x00\x1a\x00\x1f\x00\x18\x00\x1a\x00\x31\x00\x04\x00\x1f\x00\x04\x00\x18\x00\x04\x00\x35\x00\x04\x00\x04\x00\x04\x00\xff\xff\x1a\x00\xff\xff\xff\xff\x18\x00\x1a\x00\xff\xff\xff\xff\x31\x00\xff\xff\x1a\x00\x1a\x00\xff\xff\xff\xff\x31\x00\x31\x00\x18\x00\xff\xff\xff\xff\x1f\x00\xff\xff\x35\x00\x35\x00\x31\x00\x35\x00\x31\x00\xff\xff\x31\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x35\x00\x35\x00\xff\xff\xff\xff\xff\xff\x35\x00\xff\xff\xff\xff\xff\xff\x35\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x36\x00\x35\x00\x35\x00\x35\x00\xff\xff\xff\xff\x37\x00"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x34\x00\x5a\x00\xaf\x00\x2b\x00\x5a\x00\x49\x00\x38\x00\x9d\x00\x8c\x00\xd7\x00\x23\x00\x24\x00\x25\x00\x8f\x00\x51\x00\x04\x00\x02\x00\x03\x00\x35\x00\x8d\x00\x4c\x00\x4a\x00\x90\x00\x3d\x00\x5b\x00\x79\x00\x5c\x00\x91\x00\x4d\x00\x5c\x00\xb0\x00\x92\x00\x39\x00\x93\x00\x4e\x00\x9e\x00\xd5\x00\x57\x00\x4f\x00\xd4\x00\x50\x00\x5d\x00\x5e\x00\x5f\x00\x5d\x00\x5e\x00\x5f\x00\x60\x00\x2c\x00\x3e\x00\x60\x00\x26\x00\x51\x00\x61\x00\xc6\x00\xc7\x00\x61\x00\x89\x00\x8a\x00\x51\x00\x57\x00\xcf\x00\xd1\x00\x79\x00\x23\x00\x24\x00\x25\x00\x57\x00\xa1\xff\x8b\x00\x52\x00\xa1\xff\x05\x00\x70\x00\x44\x00\x71\x00\x72\x00\x73\x00\xcc\x00\xa1\xff\xa1\xff\x06\x00\x07\x00\xa1\xff\xa1\xff\xa1\xff\xc9\x00\xa1\xff\xa1\xff\xa1\xff\xc0\x00\xa1\xff\xa1\xff\xc4\x00\xa1\xff\xd7\x00\x09\x00\xc5\x00\x0a\x00\x0b\x00\x0c\x00\xbc\x00\x0d\x00\x0e\x00\xb3\x00\x26\x00\x6c\x00\x6d\x00\xd3\x00\xb4\x00\x6e\x00\x6f\x00\x70\x00\xb0\x00\x71\x00\x72\x00\x73\x00\x85\x00\x74\x00\x6c\x00\x6d\x00\xbb\x00\x69\x00\x6e\x00\x6f\x00\x70\x00\x75\x00\x71\x00\x72\x00\x73\x00\x77\x00\x74\x00\x6c\x00\x6d\x00\xbc\x00\x7b\x00\x6e\x00\x6f\x00\x70\x00\x46\x00\x71\x00\x72\x00\x73\x00\x80\x00\x74\x00\x6c\x00\x6d\x00\xad\x00\x45\x00\x6e\x00\x6f\x00\x70\x00\x48\x00\x71\x00\x72\x00\x73\x00\x53\x00\x74\x00\x6c\x00\x6d\x00\xae\x00\x52\x00\x6e\x00\x6f\x00\x70\x00\x54\x00\x71\x00\x72\x00\x73\x00\x35\x00\x74\x00\x6c\x00\x6d\x00\x9f\x00\x39\x00\x6e\x00\x6f\x00\x70\x00\x40\x00\x71\x00\x72\x00\x73\x00\x42\x00\x74\x00\x6c\x00\x6d\x00\xbd\x00\xbe\x00\x6e\x00\x6f\x00\x70\x00\xa3\x00\x71\x00\x72\x00\x73\x00\x1f\x00\x74\x00\x28\x00\x29\x00\x6c\x00\x6d\x00\x2e\x00\x2f\x00\x6e\x00\x6f\x00\x70\x00\x21\x00\x71\x00\x72\x00\x73\x00\x27\x00\x74\x00\x6c\x00\x6d\x00\x02\x00\x03\x00\x6e\x00\x6f\x00\x70\x00\x2c\x00\x71\x00\x72\x00\x73\x00\x26\x00\x74\x00\xa0\x00\x8a\x00\xc8\x00\xbf\x00\x57\x00\x57\x00\x58\x00\x58\x00\x32\x00\x56\x00\x57\x00\x57\x00\x8b\x00\x58\x00\x57\x00\x57\x00\xb5\x00\xb6\x00\x57\x00\x57\x00\xb8\x00\xb9\x00\x57\x00\x57\x00\xa6\x00\x83\x00\x57\x00\x57\x00\x87\x00\x88\x00\x57\x00\x57\x00\x93\x00\x94\x00\x57\x00\x57\x00\x95\x00\x96\x00\x57\x00\x57\x00\x97\x00\x98\x00\x57\x00\x57\x00\x99\x00\x9a\x00\x57\x00\x57\x00\x9b\x00\x9f\x00\x57\x00\x65\x00\x63\x00\x66\x00\x57\x00\x57\x00\x67\x00\x68\x00\x72\x00\x73\x00\x62\x00\x63\x00\x77\x00\x63\x00\x11\x00\x12\x00\x16\x00\x18\x00\x1d\x00\x56\x00\x2e\x00\xd1\x00\x56\x00\xd4\x00\xce\x00\xcc\x00\x2e\x00\x56\x00\xb3\x00\xcf\x00\xcb\x00\xc4\x00\xb2\x00\xc2\x00\xc3\x00\xb8\x00\x2e\x00\xa4\x00\xa8\x00\xaa\x00\xab\x00\x85\x00\xa2\x00\x87\x00\xa5\x00\xa6\x00\xac\x00\x65\x00\x6b\x00\x63\x00\x7a\x00\xa9\x00\x7d\x00\x7b\x00\x75\x00\x48\x00\x7f\x00\x37\x00\x56\x00\x3b\x00\x7e\x00\x40\x00\x32\x00\x16\x00\x00\x00\x18\x00\x00\x00\x00\x00\x2e\x00\x1a\x00\x00\x00\x00\x00\x80\x00\x00\x00\x18\x00\x1a\x00\x00\x00\x00\x00\x82\x00\x83\x00\x1f\x00\x00\x00\x00\x00\x1d\x00\x00\x00\x45\x00\x31\x00\x3f\x00\x3c\x00\x42\x00\x00\x00\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x31\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x1c\x00\x00\x00\x00\x00\x00\x00\x0f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x13\x00\x14\x00\x15\x00\x00\x00\x00\x00\xff\xff"#

happyReduceArr = Happy_Data_Array.array (1, 94) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94)
	]

happy_n_terms = 56 :: Int
happy_n_nonterms = 35 :: Int

happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn4
		 (happy_var_1
	)}

happyReduce_2 = happySpecReduce_1  1# happyReduction_2
happyReduction_2 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn5
		 (Program $ reverse happy_var_1
	)}

happyReduce_3 = happySpecReduce_2  2# happyReduction_3
happyReduction_3 happy_x_2
	happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn6
		 (happy_var_2 : happy_var_1
	)}}

happyReduce_4 = happySpecReduce_0  2# happyReduction_4
happyReduction_4  =  happyIn6
		 ([]
	)

happyReduce_5 = happyReduce 7# 3# happyReduction_5
happyReduction_5 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_3 of { (T_Identifier happy_var_3) -> 
	case happyOut10 happy_x_4 of { happy_var_4 -> 
	case happyOut37 happy_x_6 of { happy_var_6 -> 
	happyIn7
		 (FnDecl happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_6 = happySpecReduce_1  3# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOut16 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 (happy_var_1
	)}

happyReduce_7 = happyReduce 5# 3# happyReduction_7
happyReduction_7 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_3 of { (T_Identifier happy_var_3) -> 
	case happyOut13 happy_x_4 of { happy_var_4 -> 
	happyIn7
		 (SubDecl happy_var_3 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_8 = happySpecReduce_1  3# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 (happy_var_1
	)}

happyReduce_9 = happyReduce 5# 3# happyReduction_9
happyReduction_9 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	happyIn7
		 (G_VarDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_10 = happyReduce 7# 3# happyReduction_10
happyReduction_10 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	case happyOut34 happy_x_6 of { happy_var_6 -> 
	happyIn7
		 (G_VarDeclInit happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_11 = happyReduce 5# 3# happyReduction_11
happyReduction_11 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Typename happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	happyIn7
		 (Typedef happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_12 = happyReduce 4# 3# happyReduction_12
happyReduction_12 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (Struct happy_var_2 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_13 = happySpecReduce_3  4# happyReduction_13
happyReduction_13 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut9 happy_x_2 of { happy_var_2 -> 
	happyIn8
		 (StructContents $ reverse happy_var_2
	)}

happyReduce_14 = happyReduce 4# 5# happyReduction_14
happyReduction_14 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut9 happy_x_1 of { happy_var_1 -> 
	case happyOut37 happy_x_2 of { happy_var_2 -> 
	case happyOutTok happy_x_3 of { (T_Identifier happy_var_3) -> 
	happyIn9
		 ((StructVal happy_var_2 happy_var_3) : happy_var_1
	) `HappyStk` happyRest}}}

happyReduce_15 = happySpecReduce_0  5# happyReduction_15
happyReduction_15  =  happyIn9
		 ([]
	)

happyReduce_16 = happySpecReduce_3  6# happyReduction_16
happyReduction_16 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn10
		 (FuncParams $ reverse happy_var_2
	)}

happyReduce_17 = happySpecReduce_3  7# happyReduction_17
happyReduction_17 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (happy_var_3 : happy_var_1
	)}}

happyReduce_18 = happySpecReduce_1  7# happyReduction_18
happyReduction_18 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 ([happy_var_1]
	)}

happyReduce_19 = happySpecReduce_0  7# happyReduction_19
happyReduction_19  =  happyIn11
		 ([]
	)

happyReduce_20 = happySpecReduce_3  8# happyReduction_20
happyReduction_20 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_Identifier happy_var_1) -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn12
		 (FuncParam happy_var_1 happy_var_3
	)}}

happyReduce_21 = happySpecReduce_3  9# happyReduction_21
happyReduction_21 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_2 of { happy_var_2 -> 
	happyIn13
		 (SubParams $ reverse happy_var_2
	)}

happyReduce_22 = happySpecReduce_3  10# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (happy_var_3 : happy_var_1
	)}}

happyReduce_23 = happySpecReduce_1  10# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut15 happy_x_1 of { happy_var_1 -> 
	happyIn14
		 ([happy_var_1]
	)}

happyReduce_24 = happySpecReduce_0  10# happyReduction_24
happyReduction_24  =  happyIn14
		 ([]
	)

happyReduce_25 = happyReduce 4# 11# happyReduction_25
happyReduction_25 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	happyIn15
		 (ByrefParam happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_26 = happySpecReduce_3  11# happyReduction_26
happyReduction_26 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_Identifier happy_var_1) -> 
	case happyOut37 happy_x_3 of { happy_var_3 -> 
	happyIn15
		 (ByvalParam happy_var_1 happy_var_3
	)}}

happyReduce_27 = happyReduce 6# 12# happyReduction_27
happyReduction_27 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut10 happy_x_3 of { happy_var_3 -> 
	case happyOut37 happy_x_5 of { happy_var_5 -> 
	case happyOut23 happy_x_6 of { happy_var_6 -> 
	happyIn16
		 (Function happy_var_2 happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest}}}}

happyReduce_28 = happyReduce 4# 13# happyReduction_28
happyReduction_28 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	case happyOut18 happy_x_4 of { happy_var_4 -> 
	happyIn17
		 (Subroutine happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_29 = happySpecReduce_3  14# happyReduction_29
happyReduction_29 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_2 of { happy_var_2 -> 
	happyIn18
		 (SubBody $ reverse happy_var_2
	)}

happyReduce_30 = happySpecReduce_3  15# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut19 happy_x_1 of { happy_var_1 -> 
	case happyOut20 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (happy_var_2 : happy_var_1
	)}}

happyReduce_31 = happySpecReduce_0  15# happyReduction_31
happyReduction_31  =  happyIn19
		 ([]
	)

happyReduce_32 = happyReduce 4# 16# happyReduction_32
happyReduction_32 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (SubVarDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_33 = happyReduce 6# 16# happyReduction_33
happyReduction_33 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	case happyOut34 happy_x_6 of { happy_var_6 -> 
	happyIn20
		 (SubVarDeclInit happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_34 = happyReduce 4# 16# happyReduction_34
happyReduction_34 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (T_Identifier happy_var_1) -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (SubCall happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_35 = happySpecReduce_3  16# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (SubAssign happy_var_1 happy_var_3
	)}}

happyReduce_36 = happySpecReduce_2  16# happyReduction_36
happyReduction_36 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (SubAsm happy_var_2
	)}

happyReduce_37 = happyReduce 5# 16# happyReduction_37
happyReduction_37 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut18 happy_x_5 of { happy_var_5 -> 
	happyIn20
		 (SubWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_38 = happyReduce 8# 16# happyReduction_38
happyReduction_38 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut18 happy_x_5 of { happy_var_5 -> 
	case happyOut28 happy_x_6 of { happy_var_6 -> 
	case happyOut18 happy_x_8 of { happy_var_8 -> 
	happyIn20
		 (SubIfElse happy_var_3 happy_var_5 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_39 = happyReduce 6# 16# happyReduction_39
happyReduction_39 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut18 happy_x_5 of { happy_var_5 -> 
	case happyOut28 happy_x_6 of { happy_var_6 -> 
	happyIn20
		 (SubIf happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_40 = happySpecReduce_3  17# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (AsmInstrs $ reverse happy_var_2
	)}

happyReduce_41 = happySpecReduce_3  18# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_3 of { (T_StringLit happy_var_3) -> 
	happyIn22
		 (happy_var_3 : happy_var_1
	)}}

happyReduce_42 = happySpecReduce_1  18# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_StringLit happy_var_1) -> 
	happyIn22
		 ([happy_var_1]
	)}

happyReduce_43 = happySpecReduce_0  18# happyReduction_43
happyReduction_43  =  happyIn22
		 ([]
	)

happyReduce_44 = happySpecReduce_3  19# happyReduction_44
happyReduction_44 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_2 of { happy_var_2 -> 
	happyIn23
		 (FuncBody $ reverse happy_var_2
	)}

happyReduce_45 = happySpecReduce_3  20# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	case happyOut25 happy_x_2 of { happy_var_2 -> 
	happyIn24
		 (happy_var_2 : happy_var_1
	)}}

happyReduce_46 = happySpecReduce_0  20# happyReduction_46
happyReduction_46  =  happyIn24
		 ([]
	)

happyReduce_47 = happyReduce 4# 21# happyReduction_47
happyReduction_47 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	happyIn25
		 (FunVarDecl happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_48 = happyReduce 6# 21# happyReduction_48
happyReduction_48 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	case happyOut34 happy_x_6 of { happy_var_6 -> 
	happyIn25
		 (FunVarDeclInit happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_49 = happySpecReduce_3  21# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (FunAssign happy_var_1 happy_var_3
	)}}

happyReduce_50 = happyReduce 5# 21# happyReduction_50
happyReduction_50 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut23 happy_x_5 of { happy_var_5 -> 
	happyIn25
		 (FunWhile happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_51 = happyReduce 8# 21# happyReduction_51
happyReduction_51 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut23 happy_x_5 of { happy_var_5 -> 
	case happyOut31 happy_x_6 of { happy_var_6 -> 
	case happyOut23 happy_x_8 of { happy_var_8 -> 
	happyIn25
		 (FunIfElse happy_var_3 happy_var_5 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_52 = happyReduce 6# 21# happyReduction_52
happyReduction_52 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_3 of { happy_var_3 -> 
	case happyOut23 happy_x_5 of { happy_var_5 -> 
	case happyOut31 happy_x_6 of { happy_var_6 -> 
	happyIn25
		 (FunIf happy_var_3 happy_var_5 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_53 = happySpecReduce_2  21# happyReduction_53
happyReduction_53 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn25
		 (FunRet happy_var_2
	)}

happyReduce_54 = happySpecReduce_1  22# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 (Arguments $ reverse happy_var_1
	)}

happyReduce_55 = happySpecReduce_3  23# happyReduction_55
happyReduction_55 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn27
		 (happy_var_3 : happy_var_1
	)}}

happyReduce_56 = happySpecReduce_1  23# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 ([happy_var_1]
	)}

happyReduce_57 = happySpecReduce_0  23# happyReduction_57
happyReduction_57  =  happyIn27
		 ([]
	)

happyReduce_58 = happySpecReduce_1  24# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (SubElseifs $ reverse happy_var_1
	)}

happyReduce_59 = happySpecReduce_2  25# happyReduction_59
happyReduction_59 happy_x_2
	happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	case happyOut30 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (happy_var_2 : happy_var_1
	)}}

happyReduce_60 = happySpecReduce_0  25# happyReduction_60
happyReduction_60  =  happyIn29
		 ([]
	)

happyReduce_61 = happyReduce 6# 26# happyReduction_61
happyReduction_61 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_4 of { happy_var_4 -> 
	case happyOut18 happy_x_6 of { happy_var_6 -> 
	happyIn30
		 (SubElif happy_var_4 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_62 = happySpecReduce_1  27# happyReduction_62
happyReduction_62 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 (FuncElseifs $ reverse happy_var_1
	)}

happyReduce_63 = happySpecReduce_2  28# happyReduction_63
happyReduction_63 happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_2 of { happy_var_2 -> 
	happyIn32
		 (happy_var_2 : happy_var_1
	)}}

happyReduce_64 = happySpecReduce_0  28# happyReduction_64
happyReduction_64  =  happyIn32
		 ([]
	)

happyReduce_65 = happyReduce 6# 29# happyReduction_65
happyReduction_65 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_4 of { happy_var_4 -> 
	case happyOut23 happy_x_6 of { happy_var_6 -> 
	happyIn33
		 (FuncElif happy_var_4 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_66 = happySpecReduce_3  30# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_2 of { happy_var_2 -> 
	happyIn34
		 (InitArr $ reverse happy_var_2
	)}

happyReduce_67 = happySpecReduce_1  30# happyReduction_67
happyReduction_67 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (InitExpr happy_var_1
	)}

happyReduce_68 = happySpecReduce_3  31# happyReduction_68
happyReduction_68 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_3 of { (T_IntLit happy_var_3) -> 
	happyIn35
		 (happy_var_3 : happy_var_1
	)}}

happyReduce_69 = happySpecReduce_1  31# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_IntLit happy_var_1) -> 
	happyIn35
		 ([happy_var_1]
	)}

happyReduce_70 = happySpecReduce_0  31# happyReduction_70
happyReduction_70  =  happyIn35
		 ([]
	)

happyReduce_71 = happySpecReduce_2  32# happyReduction_71
happyReduction_71 happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_2 of { happy_var_2 -> 
	happyIn36
		 (VarDeref happy_var_2
	)}

happyReduce_72 = happyReduce 4# 32# happyReduction_72
happyReduction_72 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (T_Identifier happy_var_1) -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn36
		 (VarIndex happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_73 = happySpecReduce_1  32# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_Identifier happy_var_1) -> 
	happyIn36
		 (Var happy_var_1
	)}

happyReduce_74 = happySpecReduce_1  33# happyReduction_74
happyReduction_74 happy_x_1
	 =  happyIn37
		 (IntType
	)

happyReduce_75 = happySpecReduce_1  33# happyReduction_75
happyReduction_75 happy_x_1
	 =  happyIn37
		 (CharType
	)

happyReduce_76 = happySpecReduce_2  33# happyReduction_76
happyReduction_76 happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_2 of { happy_var_2 -> 
	happyIn37
		 (PtrType happy_var_2
	)}

happyReduce_77 = happySpecReduce_1  33# happyReduction_77
happyReduction_77 happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_Typename happy_var_1) -> 
	happyIn37
		 (Typename happy_var_1
	)}

happyReduce_78 = happySpecReduce_3  34# happyReduction_78
happyReduction_78 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Add happy_var_1 happy_var_3
	)}}

happyReduce_79 = happySpecReduce_3  34# happyReduction_79
happyReduction_79 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Sub happy_var_1 happy_var_3
	)}}

happyReduce_80 = happySpecReduce_3  34# happyReduction_80
happyReduction_80 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Mult happy_var_1 happy_var_3
	)}}

happyReduce_81 = happySpecReduce_3  34# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Div happy_var_1 happy_var_3
	)}}

happyReduce_82 = happySpecReduce_2  34# happyReduction_82
happyReduction_82 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (Neg happy_var_2
	)}

happyReduce_83 = happySpecReduce_2  34# happyReduction_83
happyReduction_83 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (Deref happy_var_2
	)}

happyReduce_84 = happySpecReduce_2  34# happyReduction_84
happyReduction_84 happy_x_2
	happy_x_1
	 =  case happyOutTok happy_x_2 of { (T_Identifier happy_var_2) -> 
	happyIn38
		 (Addrof happy_var_2
	)}

happyReduce_85 = happySpecReduce_3  34# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Shl happy_var_1 happy_var_3
	)}}

happyReduce_86 = happySpecReduce_3  34# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Shr happy_var_1 happy_var_3
	)}}

happyReduce_87 = happySpecReduce_3  34# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Bor happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_3  34# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Band happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_3  34# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (Bxor happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_2  34# happyReduction_90
happyReduction_90 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (Bnot happy_var_2
	)}

happyReduce_91 = happySpecReduce_3  34# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn38
		 (happy_var_2
	)}

happyReduce_92 = happySpecReduce_1  34# happyReduction_92
happyReduction_92 happy_x_1
	 =  case happyOutTok happy_x_1 of { (T_IntLit happy_var_1) -> 
	happyIn38
		 (IntLit happy_var_1
	)}

happyReduce_93 = happyReduce 4# 34# happyReduction_93
happyReduction_93 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (T_Identifier happy_var_1) -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (FnCall happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_94 = happySpecReduce_1  34# happyReduction_94
happyReduction_94 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (ExprVar happy_var_1
	)}

happyNewToken action sts stk [] =
	happyDoAction 55# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	T_IntLit happy_dollar_dollar -> cont 1#;
	T_StringLit happy_dollar_dollar -> cont 2#;
	T_Dim -> cont 3#;
	T_As -> cont 4#;
	T_Function -> cont 5#;
	T_Sub -> cont 6#;
	T_Declare -> cont 7#;
	T_ByRef -> cont 8#;
	T_Type -> cont 9#;
	T_Struct -> cont 10#;
	T_Asm -> cont 11#;
	T_Return -> cont 12#;
	T_Int -> cont 13#;
	T_Char -> cont 14#;
	T_Ptr -> cont 15#;
	T_Goto -> cont 16#;
	T_If -> cont 17#;
	T_Else -> cont 18#;
	T_Select -> cont 19#;
	T_Case -> cont 20#;
	T_While -> cont 21#;
	T_For -> cont 22#;
	T_RBrace -> cont 23#;
	T_LBrace -> cont 24#;
	T_RParen -> cont 25#;
	T_LParen -> cont 26#;
	T_LSqBrace -> cont 27#;
	T_RSqBrace -> cont 28#;
	T_EQ -> cont 29#;
	T_NE -> cont 30#;
	T_Assign -> cont 31#;
	T_Or -> cont 32#;
	T_And -> cont 33#;
	T_LE -> cont 34#;
	T_GE -> cont 35#;
	T_Shl -> cont 36#;
	T_Shr -> cont 37#;
	T_LT -> cont 38#;
	T_GT -> cont 39#;
	T_Add -> cont 40#;
	T_Subtract -> cont 41#;
	T_Star -> cont 42#;
	T_AddrOf -> cont 43#;
	T_Div -> cont 44#;
	T_Bor -> cont 45#;
	T_Band -> cont 46#;
	T_Bnot -> cont 47#;
	T_Bxor -> cont 48#;
	T_SemiColon -> cont 49#;
	T_Colon -> cont 50#;
	T_Comma -> cont 51#;
	T_Label happy_dollar_dollar -> cont 52#;
	T_Identifier happy_dollar_dollar -> cont 53#;
	T_Typename happy_dollar_dollar -> cont 54#;
	_ -> happyError' (tk:tks)
	}

happyError_ 55# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

parse tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut4 x))

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

newtype Program = Program [GlobalStatement]
    deriving (Eq, Show)

data GlobalStatement =
    FnDecl String FuncParams DataType
    | Function String FuncParams DataType FuncBody
    | SubDecl String SubParams
    | Subroutine String SubParams SubBody
    | G_VarDecl String DataType
    | G_VarDeclInit String DataType VarInit
    | Typedef String DataType
    | Struct String StructContents
    deriving (Eq, Show)

data StructVal = StructVal DataType String
    deriving (Eq, Show)

newtype StructContents = StructContents [StructVal]
    deriving (Eq, Show)

data FuncParam = FuncParam String DataType
    deriving (Eq, Show)

newtype FuncParams = FuncParams [FuncParam]
    deriving (Eq, Show)

data SubParam =
    ByrefParam String DataType
    | ByvalParam String DataType
    deriving (Eq, Show)

newtype SubParams = SubParams [SubParam]
    deriving (Eq, Show)

data SubStmt =
    SubVarDecl String DataType
    | SubVarDeclInit String DataType VarInit
    | SubCall String Arguments
    | SubAssign Variable Expression
    | SubAsm AsmInstrs
    | SubWhile Expression SubBody
    | SubIfElse Expression SubBody SubElseifs SubBody
    | SubIf Expression SubBody SubElseifs
    deriving (Eq, Show)

newtype AsmInstrs = AsmInstrs [String]
    deriving (Eq, Show)

newtype SubBody = SubBody [SubStmt]
    deriving (Eq, Show)

data FuncStmt =
    FunVarDecl String DataType
    | FunVarDeclInit String DataType VarInit
    | FunAssign Variable Expression
    | FunWhile Expression FuncBody
    | FunIfElse Expression FuncBody FuncElseifs FuncBody
    | FunIf Expression FuncBody FuncElseifs
    | FunRet Expression
    deriving (Eq, Show)

newtype FuncBody = FuncBody [FuncStmt]
    deriving (Eq, Show)

newtype Arguments = Arguments [Expression]
    deriving (Eq, Show)

data SubElif = SubElif Expression SubBody
    deriving (Eq, Show)

newtype SubElseifs = SubElseifs [SubElif]
    deriving (Eq, Show)

data FuncElif = FuncElif Expression FuncBody
    deriving (Eq, Show)

newtype FuncElseifs = FuncElseifs [FuncElif]
    deriving (Eq, Show)

data VarInit =
    InitArr [Int]
    | InitExpr Expression
    deriving (Eq, Show)

data Variable =
    VarDeref Variable
    | VarIndex String Expression
    | Var String
    deriving (Eq, Show)

data DataType =
    IntType
    | CharType
    | PtrType DataType
    | Typename String
    deriving (Eq, Show)

data Expression =
    Add Expression Expression
    | Sub Expression Expression
    | Mult Expression Expression
    | Div Expression Expression
    | Neg Expression
    | Deref Expression
    | Addrof String
    | Shl Expression Expression
    | Shr Expression Expression
    | Bor Expression Expression
    | Band Expression Expression
    | Bxor Expression Expression
    | Bnot Expression
    | IntLit Int
    | FnCall String Arguments
    | ExprVar Variable
    deriving (Eq, Show)

runParser :: IO()
runParser = do
  inStr <- getContents
  let parseTree = parse (alexScanTokens inStr)
  putStrLn ("parseTree: " ++ show(parseTree))
  print "done"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 11 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "/home/andrew/.stack/programs/x86_64-linux/ghc-7.10.3/lib/ghc-7.10.3/include/ghcversion.h" #-}

















{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}





-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 46 "templates/GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
